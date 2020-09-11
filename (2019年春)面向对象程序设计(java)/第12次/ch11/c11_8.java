import java.awt.*;
import javax.swing.*;
import javax.swing.JFrame;
import java.awt.event.*;
public class c11_8 
  {
     JLabel  lb1=new JLabel("这是第一个窗口"); 
     JLabel  lb2=new JLabel("这是第二个窗口");
     public static void main(String[] arg) 
      { new c11_8();  }
     public c11_8()
      {
        JFrame f1=new JFrame(); //创建JFrame对象
        JFrame f2=new JFrame();        
        Container cp=f1.getContentPane(); //创建JFrame的容器对象 
        Container cp1=f2.getContentPane();  
        f1.setTitle("JFrame1");
        f2.setTitle("JFrame2");
        f1.setSize(150,100); //设置窗口大小 
        f2.setSize(150,100);        
        cp.add(lb1);    
        f1.setVisible(true);     //视窗口为可见   
        cp1.add(lb2);    
        f2.setVisible(true);
        f1.addWindowListener(new WinLis()); 
        f2.addWindowListener(new WinLis()); 
      }
     class WinLis extends WindowAdapter
     { //窗口打开
       public void windowOpened(WindowEvent e){  }
//窗口变成作用中
public void windowActivated(WindowEvent e)
        {  }
       public void windowDeactivated(WindowEvent e)//窗口变成非作用中
        { }
       public void windowClosing(WindowEvent e)    //窗口关闭
        {    System.exit(0);  }  
       public void windowIconified(WindowEvent e)  //窗口最小化
        { }
     }   
}

