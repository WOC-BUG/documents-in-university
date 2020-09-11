import java.awt.*;
import javax.swing.*;
import java.awt.event.*;
public class c11_5 extends JApplet
{
   String s,s1;
   JLabel lb1=new JLabel("请按键盘");
   JLabel lb2=new JLabel("复制结果");
   JTextField tf1=new JTextField(10);//用来输入文字
   JTextArea tf2=new JTextArea(5,10);//用来显示文字内容
   Container cp=getContentPane();
   FlowLayout flow=new FlowLayout(FlowLayout.CENTER,5,5);
   public void init()
   {
cp.setLayout(flow);
      cp.add(lb1);
cp.add(tf1);
      cp.add(lb2);
cp.add(tf2);
tf1.addKeyListener(new koLis());
   }
   class koLis extends KeyAdapter
   {
       public void keyTyped(KeyEvent e)
	  {
          s=tf1.getText()+e.getKeyChar();//获取文本框的内容及键入的字符
          if(e.getKeyChar()=='\n') //若按回车键,则将文本框的内容送入文本域中
          {   s1=tf2.getText()+s;
              tf1.setText("");
              tf2.setText(s1); 
          }   
   }
}
}

