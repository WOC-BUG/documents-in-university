import javax.swing.*;
import java.awt.*;
public class DrawABall extends JFrame{
   int x,y;         //椭圆的左上角坐标
int width,height;  //椭圆的宽和长
Color c;         //椭圆的颜色
	public DrawABall(){
	     super("画一个球");
	     setSize(800,600);
	     setVisible(true);
        x = y =0;         //初始化
        width = height = 50;  //初始化
        c = new Color(255,0,0);
    }
    public static void main(String[] args){
        DrawABall daa = new DrawABall();
}
//重写继承来的paint方法，添加我们特有的绘图代码！
public void paint(Graphics g){
    Container pane = getContentPane();  //取得客户区域的对象
    Graphics pg = pane.getGraphics();      //取得客户区的图形对象pg
    pg.setColor(Color.white);
    pg.fillRect(0,0,pane.getWidth(),pane.getHeight());
    x = x + 20;         //球在运动，每一帧x方向走20个像素
    y = y + 20;        //球在运动，每一帧y方向走20个像素
    pg.setColor(c);         //设置颜色使用变量
    pg.fillOval(x, y, width, height); //设置参数使用变量
    try{
        Thread.sleep(40);          //程序休眠40毫秒
    } 
    catch(InterruptedException E) {}     
   
    repaint();                   //请求系统重画
}
}                  

