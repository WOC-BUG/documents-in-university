import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.*;
public class c11_2 extends JApplet
{
    JButton bt1=new JButton("按钮A");
    JButton bt2=new JButton("按钮B");
    JButton bt3=new JButton("按钮C");
    Container cp=getContentPane();
      //设置CardLayout布局
    CardLayout card=new CardLayout(20,20);
    public void init() 
     {
       cp.setLayout(card);
       cp.add("a",bt1);
       cp.add("b",bt2);    
       cp.add("c",bt3);
       card.next(cp); //显示按钮B
       //card.next(cp);
     }  
    
 }

