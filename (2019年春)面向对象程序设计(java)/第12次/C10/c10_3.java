import javax.swing.*;
import java.awt.*;
import java.awt.event.*;
public class c10_3 extends JApplet implements ItemListener
{
   Container ctp=getContentPane();
   JLabel lb1=new JLabel("����:"),
          lb2=new JLabel("Ӣ��:"),
          lb3=new JLabel("     ");
  String name[]={"����","����","����","ͯ÷"},
          score[]={"80","94","75","87"};
   JComboBox cbx=new JComboBox();  //��������ʽ�б�����
   public void init()
   {
      ctp.setLayout(new FlowLayout()); //������ʽ����
      for (int j=0;j<name.length;j++)    //���ѡ�����ʽ�б�������
         cbx.addItem(name[j]);
      ctp.add(lb1);
      ctp.add(cbx);  //�������ʽ�б�����������
      cbx.addItemListener(this);  //ע��cbx����������
      ctp.add(lb2);
      ctp.add(lb3);
   }
  public void itemStateChanged(ItemEvent e)
  {
      int c=0;
      String str=(String)e.getItem(); //��ȡ��ѡ���str
      for(int i=0;i<name.length;i++)
        if(str==name[i])   //�ж�str�Ƿ���name������ĳ��Ԫ�ص�����
           c=cbx.getSelectedIndex();  //����ѡ����±��c
       lb3.setText(score[c]);  //��ȡ��ѧ���ĳɼ�
   }
}

