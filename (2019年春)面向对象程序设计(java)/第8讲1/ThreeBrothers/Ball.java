//import javax.swing.*;
import java.awt.*;
public class Ball{
	int coodinateX, coodinateY, width, height, velocityX, velocityY;
	Color color ;
	public Ball(int cx,int cy,int w,int h,int vx,int vy,Color c){//构造方法
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
	public void collide(int pW,int pH){//判断是否碰撞到边界，pW是画布的宽度，pH为高度
		if(coodinateX >= pW - width){//判断是否撞上右边界,width是球的宽度
			coodinateX = pW - width;//最大不超过画布右边界
			velocityX = - velocityX;   //x速度变向
		}
		if(coodinateX <=0) {//判断是否撞上左边界
			coodinateX = 0;
			velocityX = - velocityX; //x速度变向
		}
		if(coodinateY >= pH - height) {//判断是否撞上下边界 ,height是球的高度     
			coodinateY = pH - height;//最大不超过画布下边界
			velocityY = - velocityY; //y速度变向
		}
		if(coodinateY <=0) { //判断是否撞到上边界
			coodinateY = 0;
			velocityY = - velocityY; //y速度变向
		}
	}
	public void collideEachOther(int x1,int y1,int x2,int y2)//处理球与球之间的碰撞
	{
		
	}
}

