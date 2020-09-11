import javax.swing.*;
import java.awt.*;
public class DrawABall2 extends JFrame
{
	int x,y;         //��Բ�����Ͻ�����
	int width,height;  //��Բ�Ŀ�ͳ�
	Color c;         //��Բ����ɫ
	int Fx=0,Fy=0;
	public DrawABall2()
	{
	     super("��һ����");
	     setSize(800,600);
	     setVisible(true);
        x = y =0;         //��ʼ��
        width = height = 50;  //��ʼ��
        c = new Color(255,0,0);
	}
	public static void main(String[] args)
	{DrawABall2 daa = new DrawABall2();}
//	��д�̳�����paint����������������еĻ�ͼ���룡
	public void paint(Graphics g)
	{
	    Container pane = getContentPane();  //ȡ�ÿͻ�����Ķ���
	    Graphics pg = pane.getGraphics();      //ȡ�ÿͻ�����ͼ�ζ���pg
	    pg.setColor(Color.white);
	    pg.fillRect(0,0,pane.getWidth(),pane.getHeight());
	    if(x>=pane.getWidth()-50||x<0) Fx=1-Fx;
	    if(Fx==0) x = x + 20;
	    else x = x - 20;//�����˶���ÿһ֡x������20������
	    if(y>=pane.getHeight()-50||y<0) Fy=1-Fy;
	    if(Fy==0) y = y + 20;
	    else y = y - 20;//�����˶���ÿһ֡y������20������
	    pg.setColor(c);         //������ɫʹ�ñ���
	    pg.fillOval(x, y, width, height); //���ò���ʹ�ñ���
	    try{
	        Thread.sleep(40);          //��������40����
	    } 
	    catch(InterruptedException E) {}    
	    repaint();                   //����ϵͳ�ػ�
	}
}                  

