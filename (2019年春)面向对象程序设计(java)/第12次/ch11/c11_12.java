import javax.swing.*;
import java.awt.event.*;
public class c11_12 extends JFrame implements ActionListener
 {
      JTextArea tf=new JTextArea();
      JMenuBar bar=new JMenuBar();  //����JMenuBar����
      JMenu menu=new JMenu("�ļ�"); //����JMenu����
      JMenuItem newf=new JMenuItem("�½�");//����JMenuItem����
      JMenuItem open=new JMenuItem("��");
      JMenuItem close=new JMenuItem("�ر�");    
      JMenuItem quit=new JMenuItem("�˳�");
       public c11_12() 
        { super("c11_12");       //�趨JFrame�ı�ǩ
          getContentPane().add(new JScrollPane(tf)); //����JFrame���������� 
          tf.setEditable(false); //�����ı����򲻿ɱ༭
          bar.setOpaque(true);   //����barΪ��͸��
          setJMenuBar(bar);      //����bar��JFrame
          menu.add(newf);       //����JMenuItem����menu��
          menu.add(open);
          menu.add(close);        
          menu.addSeparator();  //��JMenu�м���һ�ָ���
          menu.add(quit);
          bar.add(menu);      //��menu���ص�bar�� 
          newf.addActionListener(this);  //ע��JMenuItem��������߶���
          open.addActionListener(this);
          close.addActionListener(this);
          quit.addActionListener(this);
          addWindowListener(new WinLis());
       }
       public void actionPerformed(ActionEvent e)
          {
           if(e.getSource()==newf)tf.setText(" �½�");
           if(e.getSource()==open)tf.setText(" ��");
           if(e.getSource()==close)tf.setText(" �ر�");
           if(e.getSource()==quit)System.exit(0);
           }
       class WinLis extends  WindowAdapter
         {
	    public void windowClosing(WindowEvent e)
             { System.exit(0); }
          }
       public static void main(String[] args){
          JFrame f = new c11_12();
          f.setSize(400,200);
          f.setVisible(true); 
                   } 
}

