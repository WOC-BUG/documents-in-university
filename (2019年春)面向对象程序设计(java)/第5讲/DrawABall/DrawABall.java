import javax.swing.*;
import java.awt.*;
public class DrawABall extends JFrame{
   int x,y;         //��Բ�����Ͻ�����
int width,height;  //��Բ�Ŀ�ͳ�
Color c;         //��Բ����ɫ
	public DrawABall(){
	     super("��һ����");
	     setSize(800,600);
	     setVisible(true);
        x = y =0;         //��ʼ��
        width = height = 50;  //��ʼ��
        c = new Color(255,0,0);
    }
    public static void main(String[] args){
        DrawABall daa = new DrawABall();
}
//��д�̳�����paint����������������еĻ�ͼ���룡
public void paint(Graphics g){
    Container pane = getContentPane();  //ȡ�ÿͻ�����Ķ���
    Graphics pg = pane.getGraphics();      //ȡ�ÿͻ�����ͼ�ζ���pg
    pg.setColor(Color.white);
    pg.fillRect(0,0,pane.getWidth(),pane.getHeight());
    x = x + 20;         //�����˶���ÿһ֡x������20������
    y = y + 20;        //�����˶���ÿһ֡y������20������
    pg.setColor(c);         //������ɫʹ�ñ���
    pg.fillOval(x, y, width, height); //���ò���ʹ�ñ���
    try{
        Thread.sleep(40);          //��������40����
    } 
    catch(InterruptedException E) {}     
   
    repaint();                   //����ϵͳ�ػ�
}
}                  

