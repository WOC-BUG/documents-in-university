import javax.swing.*;
import javax.swing.border.*;
import java.awt.*;
import java.awt.event.*;
public class c11_15 implements ActionListener
{  String s1=" ";
   JFrame f=null;
   JLabel lb=new JLabel("�Ի���ʾ��  ");
   JTextField tf1,tf2; //�����Ի����е��ı������
   JDialog dialog; //�����Ի������
   public c11_15()                           
     {
        f=new JFrame("�Ի���ʾ��");
        Container cp=f.getContentPane();
        JPanel pa=new JPanel(new GridLayout(3,1));
        pa.add(lb);
        JButton bt=new JButton("����Ի���");
        bt.addActionListener(this);
        pa.add(bt);
        bt=new JButton("����");
        bt.addActionListener(this);
        pa.add(bt);
        pa.setBorder(BorderFactory.createTitledBorder(
        BorderFactory.createLineBorder(Color.blue,3),
            "�Ի���ʾ��",TitledBorder.CENTER,TitledBorder.TOP));
        cp.add(pa,BorderLayout.CENTER);
        f.pack();
        f.setVisible(true);
        f.addWindowListener(new WinLis());
     }
    public void actionPerformed(ActionEvent e) {
        String cmd=e.getActionCommand();
        if (cmd.equals("����Ի���")) 
        {
          dial(); //�ڸ÷����д����Ի���
        } 
        else if (cmd.equals("����")) {
            System.exit(0);
        }
      //�Ի����еİ�ť�¼� 
        if (cmd.equals("ȷ��"))
        {   }
        else if(cmd.equals("����"))
        {
          s1=tf1.getText();
          s1=s1+tf2.getText();
          lb.setText(s1);dialog.dispose();  
        }
     }
 
    class WinLis extends WindowAdapter
     {
        public void windowClosing(WindowEvent e) 
         { System.exit(0); }
     }
   
    public static void main(String[] args)
     {
        new c11_15();
     }
   public void dial()
   {
     dialog=new JDialog(f,"����Ի���",true); //�����Ի������
     Container diacp=dialog.getContentPane(); //�����Ի������������
     diacp.setLayout(new FlowLayout());    //���ô����Ի���������Ĳ���
     JLabel lb1=new JLabel("����ѧ��: "); 
     JLabel lb2=new JLabel("��������: ");
     JPanel pa1=new JPanel(new GridLayout(3,2));//��岼��Ϊ3��2�в���
     tf1=new JTextField(8);
     tf2=new JTextField(8);
     pa1.add(lb1); 
     pa1.add(tf1);
     pa1.add(lb2); 
     pa1.add(tf2);
     JButton bt1=new JButton("ȷ��");
     pa1.add(bt1);
     bt1= new JButton("����");
     bt1.addActionListener(this);
     pa1.add(bt1);
     diacp.add(pa1);  //�Ի���������Ϸ������
     dialog.setBounds(150,150,200,150);//���öԻ���������Ĵ�С
     dialog.setVisible(true); //�ӶԻ���Ϊ�ɼ�
   } 
}

