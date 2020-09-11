import javax.swing.*;
import java.awt.*;
public class ThreeBrothers2 extends JFrame{
	Ball ball;
	Board board;
	Brick brick;	
	public ThreeBrothers2(){
	     super("Game");
	     setSize(1000,700);
	     setVisible(true);
	     ball = new Ball(0,0,50,50,15,15);
		board = new Board(0,this.getHeight()-100,300,50,10,0);
		brick = new Brick(400,100,200,100,0,0);
   }
	/**public void init(){    //��ʼ����������
		ball = new Ball(0,0,50,50,15,15);
		board = new Board(0,this.getHeight()-100,300,50,10,0);
		brick = new Brick(400,100,200,100,0,0);
	}*/
	public void paint(Graphics g){
		Container pane = getContentPane();  //ȡ�ÿͻ�����Ķ���
	    Graphics pg = pane.getGraphics();
	    pg.setColor(Color.white);
	    pg.fillRect(0,0,pane.getWidth(),pane.getHeight());
		ball.update();
		ball.collide(this);
		ball.draw(pg);
		
		brick.update();
		brick.collide(this);
		brick.draw(pg);
		
		board.update();
		board.collide(this);
		board.draw(pg);
		
		try{
			Thread.sleep(40);
		}catch(Exception e){}
		
		repaint();
	}
	 public static void main(String[] args){
			ThreeBrothers2 daa = new ThreeBrothers2();
	}
}
