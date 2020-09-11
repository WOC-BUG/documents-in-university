import javax.swing.*;
import java.awt.*;
import java.awt.event.*;
public class c11_1 extends JApplet implements ActionListener
{
   JButton bt1=new JButton("北部"),
	      bt2=new JButton("西部"),
	      bt3=new JButton("东部"),
	      bt4=new JButton("南部");
   JLabel lb1=new JLabel("中部");
   Container cp=getContentPane();
   public void init()
   { // 设置BorderLayout 布局，组件间隔为10
	cp.setLayout(new BorderLayout(10,10)); 
	cp.add("North",bt1);  //将bt1放置北部
	bt1.addActionListener(this);
	cp.add("West",bt2); //将bt2放置西部
	bt2.addActionListener(this);
	cp.add("East",bt3); //将bt3放置东部
	bt3.addActionListener(this);
	cp.add("South",bt4); //将bt4放置南部
	bt4.addActionListener(this);
     cp.add("Center",lb1); //将bt5放置中部
}
   public void actionPerformed(ActionEvent e)
{
	if (e.getSource()==bt1)  lb1.setText("按钮1");
	else if (e.getSource()==bt2) lb1.setText("按钮2");
else if (e.getSource()==bt3)  lb1.setText("按钮3");
else
  lb1.setText("按钮4");  
}
 }

