import javax.swing.*;  
import java.awt.*;
import java.awt.event.*; 
public class c11_11 extends JFrame
 { /* 创建 JTabbedPane 对象，标签显示位置为上方 */ 
   JTabbedPane jtab=new JTabbedPane(JTabbedPane.TOP); 
   JScrollPane sp; //声明JScrollPane对象
   public static void main(String args[])
    { c11_11 f=new c11_11();
      f.setTitle("JTabbedPane对象的应用");
      f.setSize(300,300);    
      f.setVisible(true);
    }
   public c11_11()  
    {
     JLabel lb[]=new JLabel[6];  //声明JLabel 数组
     Icon pic;            //创建图片对象
     String title;       //创建标签名称对象
     for(int i=1;i<=5;i++)
      {
        pic=new ImageIcon("00"+i+".jpg");  //获得图片
        lb[i]=new JLabel();  //创建 JLabel 对象
        lb[i].setIcon(pic);  //设定 JLabel 图标
        title = "第 "+ String.valueOf(i) +" 页";  //设定标签名称
        jtab.add(title,lb[i]);  //将 JLabel 对象加入 jtab
      }
     getContentPane().add(jtab);  //将 jtab 加入窗口中
     int v=ScrollPaneConstants.VERTICAL_SCROLLBAR_AS_NEEDED;
     int h=ScrollPaneConstants.HORIZONTAL_SCROLLBAR_AS_NEEDED;
     sp=new JScrollPane(jtab,v,h); //创建JScrollPane对象,并加载jtab对象
     getContentPane().add(sp);  //将 sp 加入窗口中
     addWindowListener(new WinLis());
    }
   class WinLis extends WindowAdapter
    { public void windowClosing(WindowEvent e) 
       { System.exit(0); }
    }
 }

