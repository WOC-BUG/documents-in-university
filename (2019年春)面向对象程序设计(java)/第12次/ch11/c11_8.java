import java.awt.*;
import javax.swing.*;
import javax.swing.JFrame;
import java.awt.event.*;
public class c11_8 
  {
     JLabel  lb1=new JLabel("���ǵ�һ������"); 
     JLabel  lb2=new JLabel("���ǵڶ�������");
     public static void main(String[] arg) 
      { new c11_8();  }
     public c11_8()
      {
        JFrame f1=new JFrame(); //����JFrame����
        JFrame f2=new JFrame();        
        Container cp=f1.getContentPane(); //����JFrame���������� 
        Container cp1=f2.getContentPane();  
        f1.setTitle("JFrame1");
        f2.setTitle("JFrame2");
        f1.setSize(150,100); //���ô��ڴ�С 
        f2.setSize(150,100);        
        cp.add(lb1);    
        f1.setVisible(true);     //�Ӵ���Ϊ�ɼ�   
        cp1.add(lb2);    
        f2.setVisible(true);
        f1.addWindowListener(new WinLis()); 
        f2.addWindowListener(new WinLis()); 
      }
     class WinLis extends WindowAdapter
     { //���ڴ�
       public void windowOpened(WindowEvent e){  }
//���ڱ��������
public void windowActivated(WindowEvent e)
        {  }
       public void windowDeactivated(WindowEvent e)//���ڱ�ɷ�������
        { }
       public void windowClosing(WindowEvent e)    //���ڹر�
        {    System.exit(0);  }  
       public void windowIconified(WindowEvent e)  //������С��
        { }
     }   
}

