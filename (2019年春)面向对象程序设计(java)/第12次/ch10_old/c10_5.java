import javax.swing.*;
import java.awt.*;
import java.awt.event.*;
public class c10_5 extends JApplet implements ActionListener
{
   Container ctp=getContentPane();
   ImageIcon icon1=new ImageIcon("g1.gif"),
             icon2=new ImageIcon("g2.gif");
   JLabel lb1=new JLabel("输入文字后按回车:",icon1,JLabel.CENTER),
          lb2=new JLabel("输出结果:",icon2,JLabel.CENTER);
   JTextField tf1=new JTextField(10);  //创建文本框对象
   JTextArea  tf2=new JTextArea(5,10);  //创建文本区域对象
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
     str=tf1.getText();    //获得文本框的文本给str（此方法是JTextComponent类的方法）
//   tf2.setText(str);
     tf2.append(str+"\n");  //将str添加到文本区域中（append方法是JTextArea类的方法）
   }
}

