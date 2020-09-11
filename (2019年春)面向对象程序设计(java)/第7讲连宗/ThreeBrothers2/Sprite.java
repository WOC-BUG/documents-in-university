//Sprite.java
import java.awt.*;
import javax.swing.*;
abstract public class Sprite  {
    int x,y,w,h,vx,vy;    //共同的成员变量    
    public Sprite(int x,int y, int w,int h,int vx,int vy){
        this.x = x; this.y = y; this.w = w; this.h = h; this.vx = vx;  this.vy = vy;
    }
    public void update(){  
    	x += vx;   y += vy;   
    }     
    public void collideSprite(Sprite b){      //与参数精灵进行碰撞检测
        if( ( x+w > b.x && x < b.x + b.w )  &&  //如果本精灵处于参数精灵的x轴范围内，并且 
          ( ( y + h < b.y && y + h + vy > b.y)  ||    //本精灵穿越参数精灵的上边缘，或者 
          ( y > b.y + b.h && y + vy < b.y +b. h) ) )      //本精灵穿越参数精灵的下边缘，
        {      
        	vy = -vy;  
        }
        if( (y+h>b.y&&y<b.y+b.h)  &&  //如果本精灵处于参数精灵的x轴范围内，并且 
          ( (x+w<b.x&&x+w+vx>b.x)  ||    //本精灵穿越参数精灵的左边缘，或者 
            (x>b.x+b.w&&x+vx<b.x+b.w) ))    //本精灵穿越参数精灵的下边缘，
        {     
        	vx = -vx;    
        }
    } 
    public void collideBounds(ThreeBrothers2 game){   //与窗口碰撞检测
         if( x < 0 || x + w > game.getWidth() ){ //碰左右窗口边
        	 vx = -vx; 
         }  
         if( y < 0 || y + h > game.getHeight()){ //碰上下窗口边
        	 vy = -vy; 
         }   
    }
    abstract public void collide(ThreeBrothers2 game);
    abstract public void draw(Graphics g);
}
