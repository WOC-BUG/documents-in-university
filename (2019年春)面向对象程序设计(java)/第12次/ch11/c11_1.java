import javax.swing.*;
import java.awt.*;
import java.awt.event.*;
public class c11_1 extends JApplet implements ActionListener
{
   JButton bt1=new JButton("����"),
	      bt2=new JButton("����"),
	      bt3=new JButton("����"),
	      bt4=new JButton("�ϲ�");
   JLabel lb1=new JLabel("�в�");
   Container cp=getContentPane();
   public void init()
   { // ����BorderLayout ���֣�������Ϊ10
	cp.setLayout(new BorderLayout(10,10)); 
	cp.add("North",bt1);  //��bt1���ñ���
	bt1.addActionListener(this);
	cp.add("West",bt2); //��bt2��������
	bt2.addActionListener(this);
	cp.add("East",bt3); //��bt3���ö���
	bt3.addActionListener(this);
	cp.add("South",bt4); //��bt4�����ϲ�
	bt4.addActionListener(this);
     cp.add("Center",lb1); //��bt5�����в�
}
   public void actionPerformed(ActionEvent e)
{
	if (e.getSource()==bt1)  lb1.setText("��ť1");
	else if (e.getSource()==bt2) lb1.setText("��ť2");
else if (e.getSource()==bt3)  lb1.setText("��ť3");
else
  lb1.setText("��ť4");  
}
 }

