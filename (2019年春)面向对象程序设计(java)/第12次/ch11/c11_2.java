import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.*;
public class c11_2 extends JApplet
{
    JButton bt1=new JButton("��ťA");
    JButton bt2=new JButton("��ťB");
    JButton bt3=new JButton("��ťC");
    Container cp=getContentPane();
      //����CardLayout����
    CardLayout card=new CardLayout(20,20);
    public void init() 
     {
       cp.setLayout(card);
       cp.add("a",bt1);
       cp.add("b",bt2);    
       cp.add("c",bt3);
       card.next(cp); //��ʾ��ťB
       //card.next(cp);
     }  
    
 }

