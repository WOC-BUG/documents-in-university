import java.awt.*;
import java.applet.*;
import javax.swing.*;
 public class c13_2 extends JApplet
  {  
    public void init()
	 {
      Container cp=getContentPane();  //创建JFrame的容器对象    
      CBox pa=new CBox();  //创建容器JPanel类的对象
	  pa.setBackground(Color.cyan);  //设置pa对象的背景颜色
      //cp容器的布局为BorderLayout，添加pa到cp容器中并居中
      cp.add(pa,BorderLayout.CENTER);
	 }
 }

 class CBox extends JPanel implements Runnable
  { 
    int x,y; 
    String Message="Java Now!";  //创建字符串对象
    Font f=new Font("TimesRoman",Font.BOLD,24); //创建字体对象
    Thread th1=null;
	public  CBox()
	 { 	   
	   th1=new Thread(this);
       th1.start();
      }
     public void run()
     {
       x=getWidth();     //取applet窗口的宽度，单位为象素
       y=getHeight()/2;  //取applet窗口的高度，单位为象素
	   while(true)
         {
            x=x-5;
            if(x==0)x=getSize().width;  
            repaint();   //repaint()方法调用paint()方法重画字符串对象
            try
             { th1.sleep(500); } //使th1线程睡眠500ms
            catch(InterruptedException e){     };
         }
     }
    public void paintComponent(Graphics g)
     {
		super.paintComponent(g);
		Graphics2D g2=(Graphics2D)g;  
        g2.setFont(f);//设置字体
		g2.drawString(Message,x,y);
		//g2.fillRect(x,y,20,20);        
     }
  }
 
 
		 
