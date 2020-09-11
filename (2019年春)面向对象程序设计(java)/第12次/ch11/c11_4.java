import java.awt.*;
import java.awt.event.*;
import javax.swing.*;
public class c11_4  extends JApplet 
   {
     public void init()
      {
        Container cp=getContentPane();
        Box bBox=Box.createHorizontalBox(); //设置bBox中的组件按水平方向排列
        cp.add(bBox);  //将bBox容器添加到cp对象中
        //bBox中放入vBox1容器
        Box vBox1=Box.createVerticalBox();//设置bBox1中的组件按垂直方向排列
        JLabel lb=new JLabel("这是标签");  
        vBox1.add(lb);    //添加标签到vBox1中
        JButton bt1=new JButton("这是按钮1");
        bt1.setMaximumSize(new Dimension(100,200)); //设置按钮的最大长度
        vBox1.add(bt1);  //添加按钮到vBox1中
        bBox.add(vBox1); //添加vBox1到bBox中
        //bBox中放入vBox2容器
        Box vBox2=Box.createVerticalBox();
        bBox.add(vBox2);
        JTextField tf1=new JTextField("这是文本框",10);
       //设置文本框在容器中沿X方向居中对齐
        tf1.setAlignmentX(Component.CENTER_ALIGNMENT);
        tf1.setMaximumSize(new Dimension(150,50));
        vBox2.add(tf1);
        //vBox2容器中放入vBox2h容器
        Box vBox2h=Box.createHorizontalBox(); //vBox2h容器上的组件按水平方向排列
        vBox2.add(vBox2h);
        //vBox2h容器中放入vBox2h1
        Box vBox2h1=Box.createVerticalBox();
        //加入垂直透明组件Strut，间隔为20像素
            vBox2h1.add(Box.createVerticalStrut(20)); 
            vBox2h1.add(new JTextArea("这是文本区域",15,10));
            vBox2h1.add(Box.createVerticalStrut(20));
            vBox2h.add(vBox2h1);
         // vBox2h容器中放入vBox2h2
            Box vBox2h2=Box.createVerticalBox();
          vBox2h2.add(new JButton("这是按钮2"));
            vBox2h2.add(Box.createVerticalGlue());//加入垂直透明组件Glue，组件挤到两边
            vBox2h2.add(new JButton("这是按钮4"));
            vBox2h.add(vBox2h2);
    }   
}

