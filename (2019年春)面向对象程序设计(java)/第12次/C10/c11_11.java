import javax.swing.*;  
import java.awt.*;
import java.awt.event.*; 
public class c11_11 extends JFrame
 { /* ���� JTabbedPane ���󣬱�ǩ��ʾλ��Ϊ�Ϸ� */ 
   JTabbedPane jtab=new JTabbedPane(JTabbedPane.TOP); 
   JScrollPane sp; //����JScrollPane����
   public static void main(String args[])
    { c11_11 f=new c11_11();
      f.setTitle("JTabbedPane�����Ӧ��");
      f.setSize(300,300);    
      f.setVisible(true);
    }
   public c11_11()  
    {
     JLabel lb[]=new JLabel[6];  //����JLabel ����
     Icon pic;            //����ͼƬ����
     String title;       //������ǩ���ƶ���
     for(int i=1;i<=5;i++)
      {
        pic=new ImageIcon("00"+i+".jpg");  //���ͼƬ
        lb[i]=new JLabel();  //���� JLabel ����
        lb[i].setIcon(pic);  //�趨 JLabel ͼ��
        title = "�� "+ String.valueOf(i) +" ҳ";  //�趨��ǩ����
        jtab.add(title,lb[i]);  //�� JLabel ������� jtab
      }
     getContentPane().add(jtab);  //�� jtab ���봰����
     int v=ScrollPaneConstants.VERTICAL_SCROLLBAR_AS_NEEDED;
     int h=ScrollPaneConstants.HORIZONTAL_SCROLLBAR_AS_NEEDED;
     sp=new JScrollPane(jtab,v,h); //����JScrollPane����,������jtab����
     getContentPane().add(sp);  //�� sp ���봰����
     addWindowListener(new WinLis());
    }
   class WinLis extends WindowAdapter
    { public void windowClosing(WindowEvent e) 
       { System.exit(0); }
    }
 }

