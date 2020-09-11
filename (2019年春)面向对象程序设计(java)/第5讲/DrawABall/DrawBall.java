
/**
 * Write a description of class DrawBall here.
 * 
 * @author jimwanted
 * @version 2005\4\1
 */
import javax.swing.*;
import java.awt.*;
public class DrawBall extends JFrame{
     int flag;
     int x,y;//椭圆的左上角坐标
    int width,height;//椭圆的宽和长
    Color c;
	public DrawBall(){
	   super("画一个圆");
	   setSize(800,600);
	   setVisible(true);
	   x=y=0;
	   flag=0;
	   width=height=50;
	   c=new Color(255,0,0);
    }
    public static void main(String[] args){
    DrawBall daa = new DrawBall();
    }   
     Container pane = getContentPane();
        Graphics pg = pane.getGraphics();
    public void paint(Graphics g){//程序中并未用到参数g,用白矩形来清除球的画面
        Container pane = getContentPane();
        Graphics pg = pane.getGraphics();
        pg.setColor(Color.white);
        pg.fillRect(0,0,pane.getWidth(),pane.getHeight());
       switch(flag)
       {
           case 0:{
               x = x + 20;
               y = y + 20;
               
            }break;
            case 1:
            {
                x = x - 20;
                y = y -20;
               
            }
        }
       
       
        if(x>pane.getWidth())      
        {
          flag=1;
         }
        if(x<0)
        flag=0;
        if(y>pane.getHeight())
        {
            flag=1;
           }
          if(y<0)
          flag=0;
        pg.setColor(c);
        
        pg.fillOval(x,y,width,height);
        
        try{
        Thread.sleep(40);
        }
        catch(InterruptedException E){}
        repaint();
    }
    
 
 
}
