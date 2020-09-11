import javax.swing.*;
import javax.swing.border.*;
import java.awt.*;
import java.awt.event.*;
public class c11_15 implements ActionListener
{  String s1=" ";
   JFrame f=null;
   JLabel lb=new JLabel("对话框示例  ");
   JTextField tf1,tf2; //声明对话框中的文本框对象
   JDialog dialog; //声明对话框对象
   public c11_15()                           
     {
        f=new JFrame("对话框示例");
        Container cp=f.getContentPane();
        JPanel pa=new JPanel(new GridLayout(3,1));
        pa.add(lb);
        JButton bt=new JButton("进入对话框");
        bt.addActionListener(this);
        pa.add(bt);
        bt=new JButton("结束");
        bt.addActionListener(this);
        pa.add(bt);
        pa.setBorder(BorderFactory.createTitledBorder(
        BorderFactory.createLineBorder(Color.blue,3),
            "对话框示例",TitledBorder.CENTER,TitledBorder.TOP));
        cp.add(pa,BorderLayout.CENTER);
        f.pack();
        f.setVisible(true);
        f.addWindowListener(new WinLis());
     }
    public void actionPerformed(ActionEvent e) {
        String cmd=e.getActionCommand();
        if (cmd.equals("进入对话框")) 
        {
          dial(); //在该方法中创建对话框
        } 
        else if (cmd.equals("结束")) {
            System.exit(0);
        }
      //对话框中的按钮事件 
        if (cmd.equals("确定"))
        {   }
        else if(cmd.equals("返回"))
        {
          s1=tf1.getText();
          s1=s1+tf2.getText();
          lb.setText(s1);dialog.dispose();  
        }
     }
 
    class WinLis extends WindowAdapter
     {
        public void windowClosing(WindowEvent e) 
         { System.exit(0); }
     }
   
    public static void main(String[] args)
     {
        new c11_15();
     }
   public void dial()
   {
     dialog=new JDialog(f,"进入对话框",true); //创建对话框对象
     Container diacp=dialog.getContentPane(); //创建对话框的容器对象
     diacp.setLayout(new FlowLayout());    //设置创建对话框的容器的布局
     JLabel lb1=new JLabel("输入学号: "); 
     JLabel lb2=new JLabel("输入姓名: ");
     JPanel pa1=new JPanel(new GridLayout(3,2));//面板布局为3行2列布局
     tf1=new JTextField(8);
     tf2=new JTextField(8);
     pa1.add(lb1); 
     pa1.add(tf1);
     pa1.add(lb2); 
     pa1.add(tf2);
     JButton bt1=new JButton("确定");
     pa1.add(bt1);
     bt1= new JButton("返回");
     bt1.addActionListener(this);
     pa1.add(bt1);
     diacp.add(pa1);  //对话框的容器上放入面板
     dialog.setBounds(150,150,200,150);//设置对话框的容器的大小
     dialog.setVisible(true); //视对话框为可见
   } 
}

