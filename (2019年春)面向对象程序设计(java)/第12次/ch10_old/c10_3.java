import javax.swing.*;
import java.awt.*;
import java.awt.event.*;
public class c10_3 extends JApplet implements ItemListener
{
   Container ctp=getContentPane();
   JLabel lb1=new JLabel("姓名:"),
          lb2=new JLabel("英语:"),
          lb3=new JLabel("     ");
  String name[]={"李林","赵欣","张扬","童梅"},
          score[]={"80","94","75","87"};
   JComboBox cbx=new JComboBox();  //创建下拉式列表框对象
   public void init()
   {
      ctp.setLayout(new FlowLayout()); //设置流式布局
      for (int j=0;j<name.length;j++)    //添加选项到下拉式列表框对象中
         cbx.addItem(name[j]);
      ctp.add(lb1);
      ctp.add(cbx);  //添加下拉式列表框对象到容器上
      cbx.addItemListener(this);  //注册cbx给监听对象
      ctp.add(lb2);
      ctp.add(lb3);
   }
  public void itemStateChanged(ItemEvent e)
  {
      int c=0;
      String str=(String)e.getItem(); //获取所选项给str
      for(int i=0;i<name.length;i++)
        if(str==name[i])   //判断str是否是name数组中某个元素的内容
           c=cbx.getSelectedIndex();  //将该选项的下标给c
       lb3.setText(score[c]);  //获取该学生的成绩
   }
}

