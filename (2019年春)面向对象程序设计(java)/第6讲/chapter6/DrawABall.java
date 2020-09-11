import javax.swing.*;
import java.awt.*;
public class DrawABall extends JFrame{
		int x,y;
		int width,height;
		Color c;
		public DrawABall(){
			super("»­Ò»¸öÇò");
			setSize(800,600);
			setVisible(true);
			x=y=0;
			width=height=50;
			c=new Color(255,0,0);
		}
	public static void main(String[] args) {
		DrawABall daa=new DrawABall();
	}
	public void paint(Graphics g) {
		Container pane=getContentPane();
		Graphics pg=pane.getGraphics();
		pg.setColor(c);
		pg.fillOval(x,y,width,height);
	}
}
