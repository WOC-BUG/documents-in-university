import java.awt.*;
import javax.swing.*;
import java.awt.event.*;
public class c11_5 extends JApplet
{
   String s,s1;
   JLabel lb1=new JLabel("�밴����");
   JLabel lb2=new JLabel("���ƽ��");
   JTextField tf1=new JTextField(10);//������������
   JTextArea tf2=new JTextArea(5,10);//������ʾ��������
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
          s=tf1.getText()+e.getKeyChar();//��ȡ�ı�������ݼ�������ַ�
          if(e.getKeyChar()=='\n') //�����س���,���ı�������������ı�����
          {   s1=tf2.getText()+s;
              tf1.setText("");
              tf2.setText(s1); 
          }   
   }
}
}

