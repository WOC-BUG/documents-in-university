import java.awt.*;
import javax.swing.*;
import java.awt.event.*;
public class c11_7 implements ActionListener
{
    public c11_7()    
    {        
        JFrame.setDefaultLookAndFeelDecorated(true); //���ô���ͼ����ʾΪĬ�Ϸ�ʽ
        JFrame f=new JFrame("����һ��JFrame"); //����JFrame����
        f.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE); //������ڹر�ͼ��رմ���
        Container cp=f.getContentPane(); //����JFrame����������       
        JButton bt1=new JButton("����"); 
        bt1.addActionListener(this);        
        cp.add(bt1);        
        f.pack();      //��������  
        f.setVisible(true);     //�Ӵ���Ϊ�ɼ�   
     }        
    
    public void actionPerformed(ActionEvent e)    
    {        
        JLabel  lb=new JLabel("���ǵڶ�������");     
        JFrame.setDefaultLookAndFeelDecorated(true); //���ô���ͼ����ʾΪĬ�Ϸ�ʽ
        JFrame nf=new JFrame();        
        Container cp1=nf.getContentPane();        
        nf.setTitle("����һ����JFrame");
        nf.setSize(180,100); //���ô��ڴ�С       
        nf.setVisible(true);
        cp1.add(lb);    
        nf.addWindowListener(new WinLis()); 
    }        
    
    public static void main(String[] arg)    
    {        
        new c11_7();    
    }
   class WinLis extends WindowAdapter
     {  
         public void windowsClosing(WindowEvent e)
           {  System.exit(0);    }     
	 }   
}

