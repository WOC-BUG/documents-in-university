import javax.swing.*;
import java.awt.*;
import java.awt.event.*;
public class c10_2 extends JApplet implements ItemListener,ActionListener
{  int i1=0,i2=0,i3=0;
   int fonti=10;
   Font font;
   Container ctp=getContentPane();
   JLabel lb=new JLabel("��ѡ��");
   JCheckBox cb1,cb2,cb3;   //������ѡ�����
   JRadioButton r1,r2,r3;    //������ť����
   ButtonGroup bg=new ButtonGroup();  //������ť�����ʵ��JRadioButton��ѡһ����
   public void init()
   { ctp.setLayout(new FlowLayout()); //���ò��ַ�ʽΪ��ʽ����
     cb1=new JCheckBox("��ɫ",false);  //������ѡ��
     cb1.addItemListener(this);        //ע��cb��������this
     ctp.add(cb1);                     //��Ӹ�ѡ���ڽ�����
     cb2=new JCheckBox("��ɫ",false);
     cb2.addItemListener(this);        
     ctp.add(cb2);
     cb3=new JCheckBox("��ɫ",false);
     cb3.addItemListener(this);
     ctp.add(cb3);
     r1=new JRadioButton("10");
     r1.addActionListener(this);
     ctp.add(r1);  //���ذ�ť��������
     r2=new JRadioButton("16");
     r2.addActionListener(this);
     ctp.add(r2);
     r3=new JRadioButton("24");
     r3.addActionListener(this);
     ctp.add(r3);
     bg.add(r1); //���ذ�ť����ť��
     bg.add(r2);
     bg.add(r3);
     ctp.add(lb); //���ر�ǩ��������
   }
  public void itemStateChanged(ItemEvent e)
  {  JCheckBox cbx=(JCheckBox)e.getItem();
    if (cbx.getText()=="��ɫ")
	{  if(e.getStateChange()==e.SELECTED)i1=255; //�ж�����Ƿ�ѡ
         else i1=0;}
    if (cbx.getText()=="��ɫ")
	{if(e.getStateChange()==e.SELECTED)i2=255;
         else i2=0;  }
    if (cbx.getText()=="��ɫ")
	{if(cbx.isSelected())i3=255;  //�ж�����Ƿ�ѡ
         else i3=0;  }
    font=new Font("����",Font.BOLD,fonti);
    lb.setFont(font);
    lb.setForeground(new Color(i1,i2,i3));
   }
  public void actionPerformed(ActionEvent e)
  {   String rbt=e.getActionCommand();
      if (rbt=="10")    fonti=10;
      else if (rbt=="16")    fonti=16; 
           else    fonti=24;
      font=new Font("����",Font.BOLD,fonti);
      lb.setFont(font);
      lb.setForeground(new Color(i1,i2,i3));
   }
}

