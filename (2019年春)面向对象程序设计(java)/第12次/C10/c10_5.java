import javax.swing.*;
import java.awt.*;
import java.awt.event.*;
public class c10_5 extends JApplet implements ActionListener
{
   Container ctp=getContentPane();
   ImageIcon icon1=new ImageIcon("g1.gif"),
             icon2=new ImageIcon("g2.gif");
   JLabel lb1=new JLabel("�������ֺ󰴻س�:",icon1,JLabel.CENTER),
          lb2=new JLabel("������:",icon2,JLabel.CENTER);
   JTextField tf1=new JTextField(10);  //�����ı������
   JTextArea  tf2=new JTextArea(5,10);  //�����ı��������
   public void init()
   {
     ctp.setLayout(new FlowLayout());
     ctp.add(lb1);
     ctp.add(tf1);
     ctp.add(lb2);
     ctp.add(tf2);
     tf1.addActionListener(this);
   }
   public void actionPerformed(ActionEvent e)
   {
     String str;
     str=tf1.getText();    //����ı�����ı���str���˷�����JTextComponent��ķ�����
//   tf2.setText(str);
     tf2.append(str+"\n");  //��str��ӵ��ı������У�append������JTextArea��ķ�����
   }
}

