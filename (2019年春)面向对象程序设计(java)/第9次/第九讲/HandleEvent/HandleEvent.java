import javax.swing.*;
import java.awt.*;
import java.util.*;
import java.awt.event.*;
public class HandleEvent extends JFrame implements Runnable,KeyListener{
    //��������������ü��϶��󱣴������е���Ϸ��ɫ
   private ArrayList actors; //��̬����
   
   //�����߳�
    Thread newThread;   
    Image offScreen;                 //�λ���
    Graphics offScreenGraphics;      //���ƴλ����Graphics����

    public HandleEvent(){
        super("������");
        setSize(800,600);
        setVisible(true);     
        addKeyListener(this);
        
        int paneW = getContentPane().getWidth();
        int paneH = getContentPane().getHeight();

        actors = new ArrayList();    //������������

        //��Ϸ��ɫ��ʼ������ӽ�������
        actors.add(new Ball(0,0,30,30,10,10,new Color(255,0,0)));  //����Ϊ0
        actors.add(new Board(20,paneH-40,150,15,20,new Color(0,255,0)));//����Ϊ1
        for(int i=0;i<9;i++){
            actors.add(new Brick(paneW*i/10,40,40,30,new Color(0,0,255)));//����Ϊ2��11
        }         
        
        offScreen = createImage(paneW,paneH);                    //�����λ���
        offScreenGraphics = offScreen.getGraphics();          //��û��ƴλ���Ļ�ͼ��
        newThread = new Thread(this);
        newThread.start();
    }
    public static void main(String[] args){
        HandleEvent game = new HandleEvent();
    }
    
    public void run(){
        while(newThread != null){              //����ѭ��
            for(int i =0; i < actors.size(); i++){
                ((Spirit)actors.get(i)).update(this);
            }
            try{
                Thread.sleep(40);                     //��ͣ
            }
            catch(InterruptedException E){ }
            repaint();                                 //�ػ�      
            }
    }
 
    public void paint(Graphics g){ 
        Container pane = getContentPane();   //ȡ�����ݴ���
        Graphics pg = pane.getGraphics();      //ȡ�����ݴ����ͼ�ζ���
        
        //�������и�������λ���ԭ����ͼ��
        offScreenGraphics.setColor(Color.white);
        offScreenGraphics.fillRect(0,0,pane.getWidth(),pane.getHeight());
        
         //��һ��forѭ��ͳһ�������е���Ϸ��ɫ��draw()����������Ⱦ����ͳһ��ɡ�     
        for(int i =0; i < actors.size();i++){
            //���б�actors����Ϊi��Ԫ��ȡ������������update()��
            Spirit s = (Spirit)actors.get(i);
            s.draw(offScreenGraphics);  //�����λ�����
        }     
         //���λ���������������
        pg.drawImage(offScreen,0,0,this);       
    }
    
    //�����Ǹ����������������������е�������Ϸ����ļ���
    public ArrayList getActors(){
        return actors;
    }
   
    //�����������������ֱ𷵻ش��ڵĿ�͸�
    public int getPaneWidth(){
        return getContentPane().getWidth();
    }
    public int getPaneHeight(){
        return getContentPane().getHeight();
    }
    
   //========================ʵ��KeyListener�ӿ�===============================================
    public void keyTyped(KeyEvent e){}

    public void keyPressed(KeyEvent e){
        int key = e.getKeyCode();
        System.out.println(""+key);
        ((Board)actors.get(1)).keyPressed(this,key);
   }

    public void keyReleased(KeyEvent e){}
}

//����������Ϸ��ɫ��ͬ�ĸ���
//abstract��java�ؼ��֣������ඨ�壬������һ��������ʵ������ĳ����࣬�������д���abstract������
abstract class Spirit{  
    //����������Ϸ��ɫ��ͬ�����ԡ����ܲ�ȫ��������𽥲��� 
    int cx, cy, width, height, vx, vy;  
    Color c;
    
    //����������ͬ����Ϊ

    public Spirit(int cx, int cy, int w, int h, int vx, int vy,Color c){    //Spirit�Ĺ��췽��
        this.cx = cx;
        this.cy = cy;
        width = w;
        height = h;
        this.vx = vx;    
        this.vy = vy;    //˼��������û��y�ٶȣ�שͷ��ֹ���������ٶ����Է��ڸ��������
        this.c = c;
    }

    //update()�������������Ϸ��ɫ״̬�ĸ��£��������н�ɫ״̬���µĹ�����ȡ����
    public void update(HandleEvent game){                            
        cx = cx + vx;                      //������ƶ�
        cy = cy + vy;                      //������ƶ�

        collide(game);      //��������ķ���collide()���жϾ����Ƿ�ײ�ϻ����ڵĶ�����
        //˼���������ʣ�ש����Ҫ�ж���ײ�����ԡ���ײ���顱���ǡ�������Ϊ������Ӧ�÷��ڸ����С�����˵�Ķ���
    }

    public void collide(HandleEvent game){
        //���ж������ײ������й�ͬ�㣺��Ҫ�봰�ڽ�����ײ���顣�������˻���שͷ��ȫ�˻���
        collide(game.getPaneWidth(),game.getPaneHeight());
    }
    //������ײ�����Ķ���
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
    ��Spirit������У���һ����������һ��ͬ����collide()��
    �������ǽ��ܵĲ�����ͬ��������������ķ��������ء���overload����
    �����������жϵ�ǰ�����Ƿ�ײ����һ�����顣
    */
    public boolean collide(Spirit s){    //����ֵ�ǲ����͵ġ�
        if(cy + height < s.cy && cy + height + vy >= s.cy + s.vy){    //�жϵ�ǰ�����Ƿ�Ҫ��Խs���ϱ߽�
            if(cx + width + vx >= s.cx + s.vx && cx + vx <= s.cx + s.width + s.vx){  //�жϵ�ǰ�����Ƿ���s��x��Χ��
                cy = s.cy - height;
                vy = -vy;
                return true;
            }
        }
        if(cy > s.cy + s.height && cy + vy <= s.cy + s.height + s.vy){   //�жϵ�ǰ�����Ƿ�Ҫ��Խs���±߽�
            if(cx + width + vx >= s.cx + s.vx && cx + vx <= s.cx + s.width + s.vx){  //�жϵ�ǰ�����Ƿ���s��x��Χ��
                cy = s.cy + s.height;
                vy = -vy;
                return true;
            }
        }
        if(cx + width < s.cx && cx + width + vx > s.cx + s.vx){    //�жϵ�ǰ�����Ƿ�Ҫ��Խs����߽�
            if(cy + height + vy > s.cy && cy + vy < s.cy + s.height + s.vy){   //�жϵ�ǰ�����Ƿ���s��y��Χ��
                cx = s.cx + s.vx - width;
                vx = -vx;
                return true;
            }
        }
        if(cx > s.cx + s.width && cx + vx < s.cx + s.width + s.vx){     //�жϵ�ǰ�����Ƿ�Ҫ��Խs���ұ߽�
            if(cy + height + vy > s.cy && cy + vy < s.cy + s.height + s.vy){        //�жϵ�ǰ�����Ƿ���s��y��Χ��
                cx = s.cx + s.width + s.vx ;
                vx = -vx;
                return true;
            }
        } 
        return false;
    }

    //draw()��һ�����麯������û��ʵ�ִ��룬�����ʵ�ֱ���Ҫ�������и�����
    //û��ʵ�ִ�������Ϊ��һ���������Ϸ��ɫ����֪����λ����Լ�
    //������ȷ���һ������ġ�Shape���಻��֪���������Լ����������
    public abstract void draw(Graphics g);     
}

//��������������Ķ��壺Ball��Board��Briack��


class Ball extends Spirit{   
    public Ball(int cx, int cy, int w, int h, int vx, int vy,Color c){    //Ball�Ĺ��캯��
        super(cx,cy,w,h,vx,vy,c);    //ʹ��java�ؼ���super�����ø���Spirit�Ĺ��캯��
    }
     /*
     ����ķ���update()������Ϸ״̬�ĸ��¡��˷������¸�д�˸����
     ͬ��������������������ġ����ǡ���overriding����
     ע�⡰���ǡ���overriding���롰���ء���overloading���Ĳ�ͬ��
      �����ء���ָ��ͬһ�����д���ͬ���������򷵻�ֵ��ͬ�����ɷ�����
     �������ǡ���ָ�����������¸�д�����е���ȫ��ͬ�ķ���
     ������������ͬ�����ǵķ���ֵ�Ͳ�����һ������
    */
    public void update(HandleEvent game){
        /*
        ����²����븸��һ����Ҳ��Ҫ����������������
        �����ƶ����봰�ڵ���ײ���顣����Ҫ���ø���Ĵ��룬
        ����ʹ�ùؼ���super�����ø���ͬ��������
        */
        super.update(game);       
        /*
        �����������״̬���´��룺��Ҫ����뵲���ש����ײ
        ע�⣺���ϴοεĳ�����ȣ��˴�����ı��ˣ�
        */
       collide((Spirit)game.getActors().get(1));   //�뵲����ײ
       for(int i=2;i<game.getActors().size();i++){   //�����������1��שͷ��������2��11��
            if(collide((Spirit)game.getActors().get(i))){  //�ж����Ƿ���תͷײ��
                game.getActors().remove(i);               //���ײ�ϣ����Ǹ�שͷ��������ɾ��
            }               
        }  
    }     

    //draw()�����Ǹ���Ĵ��麯�����̳��ڸ��������,
    //���ֽ��Ѿ�֪����λ����Լ��������������ʵ�֡�
    public void draw(Graphics g){
        g.setColor(c);
        g.fillOval(cx,cy,width,height);
    }
}
//���������Ⱦ������Ҫʵ���⣬���෽���븸����ȫһ����
class Board extends Spirit{    
     public Board( int x, int y, int w,int h, int vx,Color c){   //ע�⣺�˴�Board�Ĺ��췽���Ĳ����б���û��y�ٶ�
        super( x, y, w, h ,vx, 0,c);              //ʹ�ø���Ĺ��캯������y�ٶ���0�����ϡ�
     } 
    public void draw(Graphics g){
        g.setColor(c);
        g.fillRect(cx,cy,width,height);
    }
     //��Ӧ����������е����λ���ƶ���
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
//שͷ������Ⱦ������Ҫʵ���⣬���෽���븸����ȫһ����
class Brick extends Spirit{   
    public Brick( int x, int y, int w,int h,Color c){   //ע�⣺�˴�Brick�Ĺ��췽���Ĳ����б���û���ٶ�
        super( x, y, w, h ,0,0,c);              //ʹ�ø���Ĺ��캯�������ٶ���0��0�����ϡ�
     } 
    public void draw(Graphics g){
        g.setColor(c);
        g.fillRect(cx,cy,width,height);
    }
}
