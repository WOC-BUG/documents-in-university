import java.awt.*;
import java.awt.event.*;
import javax.swing.*;
public class c11_9
{
    public c11_9()
    {
        JFrame f=new JFrame("JPanelDemo");
        Container cp=f.getContentPane();
        cp.setLayout(new GridLayout(2,1));
        JLabel[] lb=new JLabel[3];  //创建标签数组
        for(int i=0; i<lb.length ; i++) //设置每个标签的属性
         {
           lb[i]=new JLabel("标签 "+(i+1),JLabel.CENTER);
           lb[i].setBackground(Color.yellow);//设置标签颜色
           lb[i].setBorder(BorderFactory.createEtchedBorder());//设置标签边框
           lb[i].setOpaque(true); //让组件变为不透明使标签颜色显示出
         }
        JPanel pal1=new JPanel(new GridLayout(1,1)); //创建面板对象
        pal1.add(lb[0]); //加载第0个标签在容器上
        JPanel pal2=new JPanel(new GridLayout(1,2));
        JPanel pal3=new JPanel(new BorderLayout());
        pal3.add(lb[1],BorderLayout.NORTH);
        pal3.add(lb[2],BorderLayout.SOUTH);
        pal3.add(new JButton("中部"),BorderLayout.CENTER);
        JPanel pal4=new JPanel(new FlowLayout());
        pal4.add(new JTextArea("JTextArea",5,10));
        pal2.add(pal3);
        pal2.add(pal4);
        cp.add(pal1);
        cp.add(pal2);
        f.pack();
        f.setVisible(true);
        f.addWindowListener(new WinLis());
    }
    class WinLis extends WindowAdapter
     {
       public void windowClosing(WindowEvent e) 
        { System.exit(0); }
     }
    public static void main(String[] arg)
     {
        new c11_9();
     }
}

