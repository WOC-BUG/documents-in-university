import java.awt.*;
import javax.swing.*;
public class c11_3 extends JApplet
{
  Container cp=getContentPane();
  public void init() {
    //����GridLayout����
    GridLayout myLayout=new GridLayout(2,2,20,30);
    cp.setLayout(myLayout);
    cp.add(new JButton("��ťA"));
    cp.add(new JButton("��ťB"));
    cp.add(new JButton("��ťC"));
    cp.add(new JButton("��ťD"));
  }
}

