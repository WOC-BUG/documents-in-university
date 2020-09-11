import java.awt.Color;
import java.awt.Graphics;

public class Ball extends Sprite{	
	
	public Ball(int x, int y, int w, int h, int vx, int vy) {
		super(x, y, w, h, vx, vy);
		// TODO Auto-generated constructor stub
	}
	
	public void draw(Graphics g){
		g.setColor(new Color(255,0,0));
		g.fillOval(x,y,w,h);	
	}
	public void collide(ThreeBrothers2 game){
		this.collideSprite(game.board); //�������ײ
		this.collideSprite(game.brick); //��שͷ��ײ
		this.collideBounds(game);       //�봰����ײ
	}
}
