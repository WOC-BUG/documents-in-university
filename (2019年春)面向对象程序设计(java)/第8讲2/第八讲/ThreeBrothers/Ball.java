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
  if(coodinateX >= pW - width){//判断是否撞上右边界
coodinateX = pW - width;
velocityX = - velocityX;   //x速度变向
}
if(coodinateX <=0) {//判断是否撞上左边界
coodinateX = 0;
velocityX = - velocityX; //x速度变向
}
if(coodinateY >= pH - height) {//判断是否撞上下边界      
coodinateY = pH - height;
velocityY = - velocityY; //y速度变向
}
if(coodinateY <=0) { //判断是否撞到上边界
coodinateY = 0;
velocityY = - velocityY; //y速度变向
}
}
}
