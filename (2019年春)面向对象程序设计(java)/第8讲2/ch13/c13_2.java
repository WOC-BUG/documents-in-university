import java.awt.*;
import java.applet.*;
import javax.swing.*;
 public class c13_2 extends JApplet
  {  
    public void init()
	 {
      Container cp=getContentPane();  //����JFrame����������    
      CBox pa=new CBox();  //��������JPanel��Ķ���
	  pa.setBackground(Color.cyan);  //����pa����ı�����ɫ
      //cp�����Ĳ���ΪBorderLayout�����pa��cp�����в�����
      cp.add(pa,BorderLayout.CENTER);
	 }
 }

 class CBox extends JPanel implements Runnable
  { 
    int x,y; 
    String Message="Java Now!";  //�����ַ�������
    Font f=new Font("TimesRoman",Font.BOLD,24); //�����������
    Thread th1=null;
	public  CBox()
	 { 	   
	   th1=new Thread(this);
       th1.start();
      }
     public void run()
     {
       x=getWidth();     //ȡapplet���ڵĿ�ȣ���λΪ����
       y=getHeight()/2;  //ȡapplet���ڵĸ߶ȣ���λΪ����
	   while(true)
         {
            x=x-5;
            if(x==0)x=getSize().width;  
            repaint();   //repaint()��������paint()�����ػ��ַ�������
            try
             { th1.sleep(500); } //ʹth1�߳�˯��500ms
            catch(InterruptedException e){     };
         }
     }
    public void paintComponent(Graphics g)
     {
		super.paintComponent(g);
		Graphics2D g2=(Graphics2D)g;  
        g2.setFont(f);//��������
		g2.drawString(Message,x,y);
		//g2.fillRect(x,y,20,20);        
     }
  }
 
 
		 
