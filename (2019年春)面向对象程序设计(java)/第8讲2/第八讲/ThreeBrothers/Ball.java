//import javax.swing.*;
import java.awt.*;
public class Ball{
int coodinateX, coodinateY, width, height, velocityX, velocityY;
Color color ;
  public Ball(int cx,int cy,int w,int h,int vx,int vy,Color c){
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
public void collide(int pW,int pH){
  if(coodinateX >= pW - width){//�ж��Ƿ�ײ���ұ߽�
coodinateX = pW - width;
velocityX = - velocityX;   //x�ٶȱ���
}
if(coodinateX <=0) {//�ж��Ƿ�ײ����߽�
coodinateX = 0;
velocityX = - velocityX; //x�ٶȱ���
}
if(coodinateY >= pH - height) {//�ж��Ƿ�ײ���±߽�      
coodinateY = pH - height;
velocityY = - velocityY; //y�ٶȱ���
}
if(coodinateY <=0) { //�ж��Ƿ�ײ���ϱ߽�
coodinateY = 0;
velocityY = - velocityY; //y�ٶȱ���
}
}
}
