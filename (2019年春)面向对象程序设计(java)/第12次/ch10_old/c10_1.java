import java.awt.*;
import javax.swing.*;
import java.awt.event.*;
//��������ʵ��ActionListener �ӿڣ������߶�����c9_1��Ķ���
public class c10_1 extends JApplet implements ActionListener  //JApplet��Applet������
{  Container cp=getContentPane();  //����������������
   Icon ro=new ImageIcon("g1.gif");  //����ͼ�����
   Icon ge=new ImageIcon("g2.gif");
   Icon pr=new ImageIcon("g3.gif");
   JButton bt=new JButton();  //������ť����
   Icon icon=new ImageIcon("g4.jpg");
   JLabel lb=new JLabel("Java",icon,JLabel.CENTER);  //������ǩ����
  public void init()
   { 
     bt.setRolloverEnabled(true);  //����ťͼ��仯���ܴ�
     bt.setText("OK");   //��Ӱ�ť�ı�
     bt.setHorizontalTextPosition(JLabel.CENTER); //����ť������ͼ���м�
     bt.setVerticalTextPosition(JLabel.BOTTOM);   //���ð�ť������ͼ���м��Ϸ�
     cp.add(lb,BorderLayout.NORTH);  //��ӱ�ǩ��JApple����ı���λ����
     cp.add(bt,BorderLayout.SOUTH);  
     bt.setIcon(ge);  //��������뿪��ť��ͼ��
     bt.setRolloverIcon(ro);  //��������ڰ�ť�ϵ�ͼ��
     bt.setPressedIcon(pr);   //������갴�°�ť��ͼ��
     bt.addActionListener(this); //ע��bt�ļ����߶���this
   }
// actionPerformed���������ڵ���btʱ��ϵͳ�Զ�����
   public void actionPerformed(ActionEvent e)
   { if(e.getSource()==bt) //�ж϶����¼��Ƿ���bt1������
       { 
        if(lb.getText()=="Hello")  //�޸ı�ǩ�ı�
            lb.setText("���!");  	
         else
            lb.setText("Hello");   
         if(bt.getText()=="OK")    //�޸İ�ť�ı�
            bt.setText("ȷ��");  	
         else
            bt.setText("OK"); 
        }
    }
}

