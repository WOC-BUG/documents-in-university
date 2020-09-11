import javax.swing.*;
import java.awt.*;
public class ThreeBrothers extends JFrame{
	Container pane;
	Graphics pg;
	int paneW,paneH;//画布宽度和长度
	Ball liu,guan,zhang;
	public ThreeBrothers(){
		super("桃园三结义");//super的是JFrame，窗口名
		setSize(800,600);//画布尺寸
		setVisible(true);
		pane = getContentPane();
		//pg = pane.getGraphics();
		paneW = getWidth();
		paneH = getHeight();
		liu = new Ball( paneW/2,0,30,30,0,20,Color.red);    //刘使用构造方法进行初始化
		guan = new Ball(0,0,20,20,10,10,Color.blue);   //关初始化
		zhang = new Ball(paneW-20,0,20,20,-10,10,Color.green); //张初始化
		//初始横坐标、纵坐标，宽、高，横轴速度、纵轴速度，颜色
		}
	public void paint(Graphics g){
		pg = pane.getGraphics();
		pg.setColor(Color.white);
		pg.fillRect(0,0,pane.getWidth(),pane.getHeight());//把整个背景板刷新
		liu.update();  //刘更新，原来是：update(liu);
		guan.update(); //关更新
		zhang.update();//张更新
		
		liu.collide(paneW, paneH); //刘碰边，原来是：collide(liu,paneW,paneH);
		guan.collide(paneW, paneH); //关碰边
		zhang.collide( paneW, paneH);//张碰边
		
		
		liu.draw(pg);  //绘制刘，原来是：draw(liu,pg);
		guan.draw(pg); //绘制关
		zhang.draw(pg); //绘制张
		try{
			Thread.sleep(40);
		}catch(Exception e){}
	
		repaint();                 //其它代码
	} 
	public static void main(String[] args){
		ThreeBrothers daa = new ThreeBrothers();
		}
}
