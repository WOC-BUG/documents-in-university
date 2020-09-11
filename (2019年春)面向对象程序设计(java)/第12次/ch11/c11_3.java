import java.awt.*;
import javax.swing.*;
public class c11_3 extends JApplet
{
  Container cp=getContentPane();
  public void init() {
    //设置GridLayout布局
    GridLayout myLayout=new GridLayout(2,2,20,30);
    cp.setLayout(myLayout);
    cp.add(new JButton("按钮A"));
    cp.add(new JButton("按钮B"));
    cp.add(new JButton("按钮C"));
    cp.add(new JButton("按钮D"));
  }
}

