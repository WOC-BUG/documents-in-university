import javax.swing.*;
import java.awt.*;
import java.util.*;
import java.awt.event.*;
public class HandleEvent extends JFrame implements Runnable,KeyListener{
    //主类的数据区中用集合对象保存着所有的游戏角色
   private ArrayList actors; //动态数组
   
   //动画线程
    Thread newThread;   
    Image offScreen;                 //次画面
    Graphics offScreenGraphics;      //绘制次画面的Graphics对象

    public HandleEvent(){
        super("容器类");
        setSize(800,600);
        setVisible(true);     
        addKeyListener(this);
        
        int paneW = getContentPane().getWidth();
        int paneH = getContentPane().getHeight();

        actors = new ArrayList();    //创建容器对象

        //游戏角色初始化并添加进入容器
        actors.add(new Ball(0,0,30,30,10,10,new Color(255,0,0)));  //索引为0
        actors.add(new Board(20,paneH-40,150,15,20,new Color(0,255,0)));//索引为1
        for(int i=0;i<9;i++){
            actors.add(new Brick(paneW*i/10,40,40,30,new Color(0,0,255)));//索引为2到11
        }         
        
        offScreen = createImage(paneW,paneH);                    //创建次画面
        offScreenGraphics = offScreen.getGraphics();          //获得绘制次画面的绘图类
        newThread = new Thread(this);
        newThread.start();
    }
    public static void main(String[] args){
        HandleEvent game = new HandleEvent();
    }
    
    public void run(){
        while(newThread != null){              //更新循环
            for(int i =0; i < actors.size(); i++){
                ((Spirit)actors.get(i)).update(this);
            }
            try{
                Thread.sleep(40);                     //暂停
            }
            catch(InterruptedException E){ }
            repaint();                                 //重画      
            }
    }
 
    public void paint(Graphics g){ 
        Container pane = getContentPane();   //取得内容窗格
        Graphics pg = pane.getGraphics();      //取得内容窗格的图形对象
        
        //下面两行负责清除次画面原来的图画
        offScreenGraphics.setColor(Color.white);
        offScreenGraphics.fillRect(0,0,pane.getWidth(),pane.getHeight());
        
         //用一个for循环统一调用所有的游戏角色的draw()方法，把渲染任务统一完成。     
        for(int i =0; i < actors.size();i++){
            //把列表actors索引为i的元素取出，并调用其update()。
            Spirit s = (Spirit)actors.get(i);
            s.draw(offScreenGraphics);  //画到次画面上
        }     
         //将次画面贴到主画面上
        pg.drawImage(offScreen,0,0,this);       
    }
    
    //下面是个公开方法，返回主对象中的所有游戏对象的集合
    public ArrayList getActors(){
        return actors;
    }
   
    //以下两个公开方法分别返回窗口的宽和高
    public int getPaneWidth(){
        return getContentPane().getWidth();
    }
    public int getPaneHeight(){
        return getContentPane().getHeight();
    }
    
   //========================实现KeyListener接口===============================================
    public void keyTyped(KeyEvent e){}

    public void keyPressed(KeyEvent e){
        int key = e.getKeyCode();
        System.out.println(""+key);
        ((Board)actors.get(1)).keyPressed(this,key);
   }

    public void keyReleased(KeyEvent e){}
}

//定义所有游戏角色共同的父类
//abstract是java关键字，修饰类定义，表明是一个不能有实例对象的抽象类，表明其中存在abstract函数。
abstract class Spirit{  
    //首先描述游戏角色共同的属性。可能不全，下面会逐渐补充 
    int cx, cy, width, height, vx, vy;  
    Color c;
    
    //下面描述共同的行为

    public Spirit(int cx, int cy, int w, int h, int vx, int vy,Color c){    //Spirit的构造方法
        this.cx = cx;
        this.cy = cy;
        width = w;
        height = h;
        this.vx = vx;    
        this.vy = vy;    //思考：挡板没有y速度，砖头静止不动，把速度属性放在父类合适吗？
        this.c = c;
    }

    //update()方法负责进行游戏角色状态的更新，它把所有角色状态更新的共性提取出来
    public void update(HandleEvent game){                            
        cx = cx + vx;                      //精灵的移动
        cy = cy + vy;                      //精灵的移动

        collide(game);      //调用自身的方法collide()，判断精灵是否撞上环境内的东西。
        //思考：有人问，砖不需要判断碰撞，所以“碰撞检验”不是“公共行为”，不应该放在父类中。此人说的对吗？
    }

    public void collide(HandleEvent game){
        //所有对象的碰撞检验具有共同点：都要与窗口进行碰撞检验。（挡板退化，砖头完全退化）
        collide(game.getPaneWidth(),game.getPaneHeight());
    }
    //窗口碰撞方法的定义
    public void collide(int pw,int ph){
         if(cx + width > pw){
            cx = pw - width;
            vx = -vx;
        }
        if(cx < 0){
            cx = 0;
            vx = -vx;
        }
        if(cy + height > ph){
            cy = ph - height;
            vy = -vy;
        }
        if(cy < 0){
            cy = 0;
            vy = -vy;
        }
    }

    /*
    在Spirit这个类中，下一个方法与上一个同名：collide()，
    但是它们接受的参数不同，这叫做面向对象的方法“重载”（overload）。
    它的作用是判断当前精灵是否撞上另一个精灵。
    */
    public boolean collide(Spirit s){    //返回值是布尔型的。
        if(cy + height < s.cy && cy + height + vy >= s.cy + s.vy){    //判断当前精灵是否将要穿越s的上边界
            if(cx + width + vx >= s.cx + s.vx && cx + vx <= s.cx + s.width + s.vx){  //判断当前精灵是否将在s的x范围内
                cy = s.cy - height;
                vy = -vy;
                return true;
            }
        }
        if(cy > s.cy + s.height && cy + vy <= s.cy + s.height + s.vy){   //判断当前精灵是否将要穿越s的下边界
            if(cx + width + vx >= s.cx + s.vx && cx + vx <= s.cx + s.width + s.vx){  //判断当前精灵是否将在s的x范围内
                cy = s.cy + s.height;
                vy = -vy;
                return true;
            }
        }
        if(cx + width < s.cx && cx + width + vx > s.cx + s.vx){    //判断当前精灵是否将要穿越s的左边界
            if(cy + height + vy > s.cy && cy + vy < s.cy + s.height + s.vy){   //判断当前精灵是否将在s的y范围内
                cx = s.cx + s.vx - width;
                vx = -vx;
                return true;
            }
        }
        if(cx > s.cx + s.width && cx + vx < s.cx + s.width + s.vx){     //判断当前精灵是否将要穿越s的右边界
            if(cy + height + vy > s.cy && cy + vy < s.cy + s.height + s.vy){        //判断当前精灵是否将在s的y范围内
                cx = s.cx + s.width + s.vx ;
                vx = -vx;
                return true;
            }
        } 
        return false;
    }

    //draw()是一个纯虚函数，它没有实现代码，其具体实现必须要在子类中给出。
    //没有实现代码是因为：一个抽象的游戏角色不会知道如何绘制自己
    //（打个比方，一个抽象的“Shape”类不会知道如何求解自己的面积）。
    public abstract void draw(Graphics g);     
}

//下面是三个子类的定义：Ball、Board和Briack。


class Ball extends Spirit{   
    public Ball(int cx, int cy, int w, int h, int vx, int vy,Color c){    //Ball的构造函数
        super(cx,cy,w,h,vx,vy,c);    //使用java关键字super，调用父类Spirit的构造函数
    }
     /*
     下面的方法update()负责游戏状态的更新。此方法重新改写了父类的
     同名方法，这叫做面向对象的“覆盖”（overriding）。
     注意“覆盖”（overriding）与“重载”（overloading）的不同：
      “重载”是指在同一个类中存在同名但参数或返回值不同的若干方法。
     而“覆盖”是指在子类中重新改写父类中的完全相同的方法
     不仅方法名相同，它们的返回值和参数都一样）。
    */
    public void update(HandleEvent game){
        /*
        球更新操作与父类一样，也需要进行两个基本任务：
        坐标移动和与窗口的碰撞检验。所以要重用父类的代码，
        所以使用关键字super，调用父类同名方法。
        */
        super.update(game);       
        /*
        这是球特殊的状态更新代码：需要检测与挡板和砖的碰撞
        注意：与上次课的程序相比，此处代码改变了！
        */
       collide((Spirit)game.getActors().get(1));   //与挡板碰撞
       for(int i=2;i<game.getActors().size();i++){   //挡板的索引是1，砖头的索引是2到11。
            if(collide((Spirit)game.getActors().get(i))){  //判断球是否与转头撞上
                game.getActors().remove(i);               //如果撞上，把那个砖头从容器中删除
            }               
        }  
    }     

    //draw()方法是父类的纯虚函数，继承于父类的子类,
    //球现今已经知道如何画出自己，这里给出具体实现。
    public void draw(Graphics g){
        g.setColor(c);
        g.fillOval(cx,cy,width,height);
    }
}
//挡板除了渲染方法需要实现外，其余方法与父类完全一样。
class Board extends Spirit{    
     public Board( int x, int y, int w,int h, int vx,Color c){   //注意：此处Board的构造方法的参数列表种没有y速度
        super( x, y, w, h ,vx, 0,c);              //使用父类的构造函数，将y速度用0补充上。
     } 
    public void draw(Graphics g){
        g.setColor(c);
        g.fillRect(cx,cy,width,height);
    }
     //响应键盘命令，进行挡板的位置移动。
    public void keyPressed(HandleEvent game,int key){
        int appw = game.getSize().width;
        int apph = game.getSize().height;
        if( key == KeyEvent.VK_RIGHT){
            if( appw - cx - width >= vx ){
                cx = cx + vx;
            }else{
                cx = appw - width; 
            }
        }else if( key == KeyEvent.VK_LEFT){
            if( cx >= vx ){
                cx = cx - vx;
            }else{
                cx = 0; 
            }
        }
       
     }
     public void update(HandleEvent game){}
}
//砖头除了渲染方法需要实现外，其余方法与父类完全一样。
class Brick extends Spirit{   
    public Brick( int x, int y, int w,int h,Color c){   //注意：此处Brick的构造方法的参数列表种没有速度
        super( x, y, w, h ,0,0,c);              //使用父类的构造函数，将速度用0、0补充上。
     } 
    public void draw(Graphics g){
        g.setColor(c);
        g.fillRect(cx,cy,width,height);
    }
}
