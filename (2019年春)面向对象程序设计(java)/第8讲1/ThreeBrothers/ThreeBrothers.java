import javax.swing.*;
import java.awt.*;
public class ThreeBrothers extends JFrame{
	Container pane;
	Graphics pg;
	int paneW,paneH;//������Ⱥͳ���
	Ball liu,guan,zhang;
	public ThreeBrothers(){
		super("��԰������");//super����JFrame��������
		setSize(800,600);//�����ߴ�
		setVisible(true);
		pane = getContentPane();
		//pg = pane.getGraphics();
		paneW = getWidth();
		paneH = getHeight();
		liu = new Ball( paneW/2,0,30,30,0,20,Color.red);    //��ʹ�ù��췽�����г�ʼ��
		guan = new Ball(0,0,20,20,10,10,Color.blue);   //�س�ʼ��
		zhang = new Ball(paneW-20,0,20,20,-10,10,Color.green); //�ų�ʼ��
		//��ʼ�����ꡢ�����꣬���ߣ������ٶȡ������ٶȣ���ɫ
		}
	public void paint(Graphics g){
		pg = pane.getGraphics();
		pg.setColor(Color.white);
		pg.fillRect(0,0,pane.getWidth(),pane.getHeight());//������������ˢ��
		liu.update();  //�����£�ԭ���ǣ�update(liu);
		guan.update(); //�ظ���
		zhang.update();//�Ÿ���
		
		liu.collide(paneW, paneH); //�����ߣ�ԭ���ǣ�collide(liu,paneW,paneH);
		guan.collide(paneW, paneH); //������
		zhang.collide( paneW, paneH);//������
		
		
		liu.draw(pg);  //��������ԭ���ǣ�draw(liu,pg);
		guan.draw(pg); //���ƹ�
		zhang.draw(pg); //������
		try{
			Thread.sleep(40);
		}catch(Exception e){}
	
		repaint();                 //��������
	} 
	public static void main(String[] args){
		ThreeBrothers daa = new ThreeBrothers();
		}
}
