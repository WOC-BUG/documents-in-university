import java.awt.*;
import java.awt.event.*;
import javax.swing.*;
public class c11_9
{
    public c11_9()
    {
        JFrame f=new JFrame("JPanelDemo");
        Container cp=f.getContentPane();
        cp.setLayout(new GridLayout(2,1));
        JLabel[] lb=new JLabel[3];  //������ǩ����
        for(int i=0; i<lb.length ; i++) //����ÿ����ǩ������
         {
           lb[i]=new JLabel("��ǩ "+(i+1),JLabel.CENTER);
           lb[i].setBackground(Color.yellow);//���ñ�ǩ��ɫ
           lb[i].setBorder(BorderFactory.createEtchedBorder());//���ñ�ǩ�߿�
           lb[i].setOpaque(true); //�������Ϊ��͸��ʹ��ǩ��ɫ��ʾ��
         }
        JPanel pal1=new JPanel(new GridLayout(1,1)); //����������
        pal1.add(lb[0]); //���ص�0����ǩ��������
        JPanel pal2=new JPanel(new GridLayout(1,2));
        JPanel pal3=new JPanel(new BorderLayout());
        pal3.add(lb[1],BorderLayout.NORTH);
        pal3.add(lb[2],BorderLayout.SOUTH);
        pal3.add(new JButton("�в�"),BorderLayout.CENTER);
        JPanel pal4=new JPanel(new FlowLayout());
        pal4.add(new JTextArea("JTextArea",5,10));
        pal2.add(pal3);
        pal2.add(pal4);
        cp.add(pal1);
        cp.add(pal2);
        f.pack();
        f.setVisible(true);
        f.addWindowListener(new WinLis());
    }
    class WinLis extends WindowAdapter
     {
       public void windowClosing(WindowEvent e) 
        { System.exit(0); }
     }
    public static void main(String[] arg)
     {
        new c11_9();
     }
}

