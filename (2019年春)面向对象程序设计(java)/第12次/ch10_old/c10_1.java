import java.awt.*;
import javax.swing.*;
import java.awt.event.*;
//声明该类实现ActionListener 接口，监听者对象是c9_1类的对象
public class c10_1 extends JApplet implements ActionListener  //JApplet是Applet的子类
{  Container cp=getContentPane();  //创建窗口容器对象
   Icon ro=new ImageIcon("g1.gif");  //创建图标对象
   Icon ge=new ImageIcon("g2.gif");
   Icon pr=new ImageIcon("g3.gif");
   JButton bt=new JButton();  //创建按钮对象
   Icon icon=new ImageIcon("g4.jpg");
   JLabel lb=new JLabel("Java",icon,JLabel.CENTER);  //创建标签对象
  public void init()
   { 
     bt.setRolloverEnabled(true);  //将按钮图标变化功能打开
     bt.setText("OK");   //添加按钮文本
     bt.setHorizontalTextPosition(JLabel.CENTER); //将按钮文字在图标中间
     bt.setVerticalTextPosition(JLabel.BOTTOM);   //设置按钮文字在图标中间上方
     cp.add(lb,BorderLayout.NORTH);  //添加标签在JApple界面的北部位置上
     cp.add(bt,BorderLayout.SOUTH);  
     bt.setIcon(ge);  //设置鼠标离开按钮的图标
     bt.setRolloverIcon(ro);  //设置鼠标在按钮上的图标
     bt.setPressedIcon(pr);   //设置鼠标按下按钮的图标
     bt.addActionListener(this); //注册bt的监听者对象this
   }
// actionPerformed（）方法在单击bt时被系统自动调用
   public void actionPerformed(ActionEvent e)
   { if(e.getSource()==bt) //判断动作事件是否由bt1引发的
       { 
        if(lb.getText()=="Hello")  //修改标签文本
            lb.setText("你好!");  	
         else
            lb.setText("Hello");   
         if(bt.getText()=="OK")    //修改按钮文本
            bt.setText("确定");  	
         else
            bt.setText("OK"); 
        }
    }
}

