//import javax.swing.*;
import java.awt.*;
public class Ball{
	int coodinateX, coodinateY, width, height, velocityX, velocityY;
	Color color ;
	public Ball(int cx,int cy,int w,int h,int vx,int vy,Color c){//���췽��
		coodinateX=cx;
		coodinateY=cy;
		width=w;
		height=h;
		velocityX=vx;
		velocityY=vy;
		color=c;
	}
	public void update(){
	  coodinateX = coodinateX + velocityX;
	  coodinateY = coodinateY + velocityY;
	}
	public void draw(Graphics g){
	  g.setColor(color);
	  g.fillOval(coodinateX, coodinateY, width, height);
	}
	public int getX() {
		return coodinateX;
	}
	public int getY()
	{
		return coodinateY;
	}
	public void collide(int pW,int pH){//�ж��Ƿ���ײ���߽磬pW�ǻ����Ŀ�ȣ�pHΪ�߶�
		if(coodinateX >= pW - width){//�ж��Ƿ�ײ���ұ߽�,width����Ŀ��
			coodinateX = pW - width;//��󲻳��������ұ߽�
			velocityX = - velocityX;   //x�ٶȱ���
		}
		if(coodinateX <=0) {//�ж��Ƿ�ײ����߽�
			coodinateX = 0;
			velocityX = - velocityX; //x�ٶȱ���
		}
		if(coodinateY >= pH - height) {//�ж��Ƿ�ײ���±߽� ,height����ĸ߶�     
			coodinateY = pH - height;//��󲻳��������±߽�
			velocityY = - velocityY; //y�ٶȱ���
		}
		if(coodinateY <=0) { //�ж��Ƿ�ײ���ϱ߽�
			coodinateY = 0;
			velocityY = - velocityY; //y�ٶȱ���
		}
	}
	public void collideEachOther(int x1,int y1,int x2,int y2)//����������֮�����ײ
	{
		
	}
}

