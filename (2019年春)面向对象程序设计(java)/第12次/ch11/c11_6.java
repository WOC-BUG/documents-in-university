import java.awt.*;
import javax.swing.*;
import java.awt.event.*;
public class c11_6 extends JApplet
 {  int x,y;
    JLabel lb1=new JLabel("X:"), lb2=new JLabel("Y:"), lb3=new JLabel("");
    JTextField tf1=new JTextField(5), tf2=new JTextField(5);
    Container cp=getContentPane();
    FlowLayout flow=new FlowLayout(FlowLayout.CENTER,5,5);
    public void init()
    {
     cp.setLayout(flow);
   	 cp.add(lb1);
	 cp.add(tf1);
	 cp.add(lb2);
	 cp.add(tf2);
     cp.add(lb3);
	 addMouseListener(new mouseListener());
	 addMouseMotionListener(new koLis());
	}
    class mouseListener implements MouseListener
	{
     public void mouseClicked(MouseEvent e)
	   { lb3.setText("点击鼠标");  }
	 public void mousePressed(MouseEvent e)
	   { lb3.setText("鼠标按钮按下"); }
	 public void mouseEntered(MouseEvent e)
	   { lb3.setText("鼠标进入窗口"); }
	 public void mouseExited(MouseEvent e)
	   { lb3.setText("鼠标不在窗口"); }
	 public void mouseReleased(MouseEvent e)
	   { lb3.setText("鼠标按钮松开"); }
	}
    class koLis implements MouseMotionListener
	{
	  public void mouseMoved(MouseEvent e)
	   {
	   x=e.getX();
	   y=e.getY();
	   tf1.setText(String.valueOf(x));
	   tf2.setText(String.valueOf(y));
	   }
	  public void mouseDragged(MouseEvent e)
	   {lb3.setText("拖动鼠标"); }
	}
 }

