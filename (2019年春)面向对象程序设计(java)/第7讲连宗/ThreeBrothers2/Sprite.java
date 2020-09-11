//Sprite.java
import java.awt.*;
import javax.swing.*;
abstract public class Sprite  {
    int x,y,w,h,vx,vy;    //��ͬ�ĳ�Ա����    
    public Sprite(int x,int y, int w,int h,int vx,int vy){
        this.x = x; this.y = y; this.w = w; this.h = h; this.vx = vx;  this.vy = vy;
    }
    public void update(){  
    	x += vx;   y += vy;   
    }     
    public void collideSprite(Sprite b){      //��������������ײ���
        if( ( x+w > b.x && x < b.x + b.w )  &&  //��������鴦�ڲ��������x�᷶Χ�ڣ����� 
          ( ( y + h < b.y && y + h + vy > b.y)  ||    //�����鴩Խ����������ϱ�Ե������ 
          ( y > b.y + b.h && y + vy < b.y +b. h) ) )      //�����鴩Խ����������±�Ե��
        {      
        	vy = -vy;  
        }
        if( (y+h>b.y&&y<b.y+b.h)  &&  //��������鴦�ڲ��������x�᷶Χ�ڣ����� 
          ( (x+w<b.x&&x+w+vx>b.x)  ||    //�����鴩Խ������������Ե������ 
            (x>b.x+b.w&&x+vx<b.x+b.w) ))    //�����鴩Խ����������±�Ե��
        {     
        	vx = -vx;    
        }
    } 
    public void collideBounds(ThreeBrothers2 game){   //�봰����ײ���
         if( x < 0 || x + w > game.getWidth() ){ //�����Ҵ��ڱ�
        	 vx = -vx; 
         }  
         if( y < 0 || y + h > game.getHeight()){ //�����´��ڱ�
        	 vy = -vy; 
         }   
    }
    abstract public void collide(ThreeBrothers2 game);
    abstract public void draw(Graphics g);
}
