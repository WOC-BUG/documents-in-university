import java.awt.*;
import java.awt.event.*;
import javax.swing.*;
import javax.swing.event.*;
public class c10_4 extends JApplet implements ListSelectionListener
{   JList lis=null;
    JLabel lb=null;
    String[] s={"Сѧ","����","����","��ѧ","�о���"};
    public void init()
     {  Container cp=getContentPane();
        cp.setLayout(new BorderLayout());
        lb=new JLabel();
        lis=new JList(s);
        lis.setVisibleRowCount(3);  //�����б��Ŀɼ�ѡ��������ѡ�������ֹ�����
        lis.setBorder(BorderFactory.createTitledBorder("��ѡ��"));//�����б��ı߿��ı�
        lis.addListSelectionListener(this);  //ע��lis�������߶���
        cp.add(lb,BorderLayout.NORTH);
         //��lis�����������������ٽ����������ص������ϡ�
        cp.add(new JScrollPane(lis),BorderLayout.CENTER);
      }
     public void valueChanged(ListSelectionEvent e)
     {  int m=0;
         String str="ѡȡ���ǣ�";
         //ȡ������ѡ����±�ֵ��index����
         int[] index = lis.getSelectedIndices();
         for(int i=0;i<index.length;i++)
       { //����ȡ�õ��±�ֵ���ҵ���Ӧ������Ԫ��
            m=index[i];
            str=str+s[m]+"  ";
          }
         lb.setText(str);//���ѡ�����ֵ
     }
}

