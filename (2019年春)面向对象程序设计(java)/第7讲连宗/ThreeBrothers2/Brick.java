import java.awt.Color;
import java.awt.Graphics;

public class Brick extends Sprite{
	public Brick(int x, int y, int w, int h, int vx, int vy) {
		super(x, y, w, h, vx, vy);
		// TODO Auto-generated constructor stub
	}
	public void draw(Graphics g){
		g.setColor(Color.BLACK);
		g.fillRect(x,y,w,h);
	}
//@Override
	public void collide(ThreeBrothers2 game) {
		// TODO Auto-generated method stub
		
	}
}
