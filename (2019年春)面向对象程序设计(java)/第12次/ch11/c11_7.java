import java.awt.*;
import javax.swing.*;
import java.awt.event.*;
public class c11_7 implements ActionListener
{
    public c11_7()    
    {        
        JFrame.setDefaultLookAndFeelDecorated(true); //设置窗体图标显示为默认方式
        JFrame f=new JFrame("这是一个JFrame"); //创建JFrame对象
        f.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE); //点击窗口关闭图标关闭窗口
        Container cp=f.getContentPane(); //创建JFrame的容器对象       
        JButton bt1=new JButton("请点击"); 
        bt1.addActionListener(this);        
        cp.add(bt1);        
        f.pack();      //调整窗口  
        f.setVisible(true);     //视窗口为可见   
     }        
    
    public void actionPerformed(ActionEvent e)    
    {        
        JLabel  lb=new JLabel("这是第二个窗口");     
        JFrame.setDefaultLookAndFeelDecorated(true); //设置窗体图标显示为默认方式
        JFrame nf=new JFrame();        
        Container cp1=nf.getContentPane();        
        nf.setTitle("这是一个新JFrame");
        nf.setSize(180,100); //设置窗口大小       
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

