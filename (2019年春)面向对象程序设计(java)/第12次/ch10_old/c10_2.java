import javax.swing.*;
import java.awt.*;
import java.awt.event.*;
public class c10_2 extends JApplet implements ItemListener,ActionListener
{  int i1=0,i2=0,i3=0;
   int fonti=10;
   Font font;
   Container ctp=getContentPane();
   JLabel lb=new JLabel("请选择");
   JCheckBox cb1,cb2,cb3;   //声明复选框对象
   JRadioButton r1,r2,r3;    //声明按钮对象
   ButtonGroup bg=new ButtonGroup();  //创建按钮组对象，实现JRadioButton多选一功能
   public void init()
   { ctp.setLayout(new FlowLayout()); //设置布局方式为流式布局
     cb1=new JCheckBox("红色",false);  //创建复选框
     cb1.addItemListener(this);        //注册cb给监听者this
     ctp.add(cb1);                     //添加复选框在界面上
     cb2=new JCheckBox("绿色",false);
     cb2.addItemListener(this);        
     ctp.add(cb2);
     cb3=new JCheckBox("蓝色",false);
     cb3.addItemListener(this);
     ctp.add(cb3);
     r1=new JRadioButton("10");
     r1.addActionListener(this);
     ctp.add(r1);  //加载按钮到界面上
     r2=new JRadioButton("16");
     r2.addActionListener(this);
     ctp.add(r2);
     r3=new JRadioButton("24");
     r3.addActionListener(this);
     ctp.add(r3);
     bg.add(r1); //加载按钮到按钮组
     bg.add(r2);
     bg.add(r3);
     ctp.add(lb); //加载标签到界面上
   }
  public void itemStateChanged(ItemEvent e)
  {  JCheckBox cbx=(JCheckBox)e.getItem();
    if (cbx.getText()=="红色")
	{  if(e.getStateChange()==e.SELECTED)i1=255; //判断组件是否被选
         else i1=0;}
    if (cbx.getText()=="绿色")
	{if(e.getStateChange()==e.SELECTED)i2=255;
         else i2=0;  }
    if (cbx.getText()=="蓝色")
	{if(cbx.isSelected())i3=255;  //判断组件是否被选
         else i3=0;  }
    font=new Font("宋体",Font.BOLD,fonti);
    lb.setFont(font);
    lb.setForeground(new Color(i1,i2,i3));
   }
  public void actionPerformed(ActionEvent e)
  {   String rbt=e.getActionCommand();
      if (rbt=="10")    fonti=10;
      else if (rbt=="16")    fonti=16; 
           else    fonti=24;
      font=new Font("宋体",Font.BOLD,fonti);
      lb.setFont(font);
      lb.setForeground(new Color(i1,i2,i3));
   }
}

