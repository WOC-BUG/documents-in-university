import java.awt.*;
import javax.swing.*;
import java.awt.event.*;
public class c11_14 implements ActionListener
{
    JFrame f=null;
    JLabel lb=null;
    public c11_14() 
    {
        f = new JFrame("OptionPane Demo");
        Container cp=f.getContentPane();
        JPanel pa=new JPanel();
        pa.setLayout(new GridLayout(2,1));
        JButton bt=new JButton("Show Text Input");
        bt.addActionListener(this);
        pa.add(bt);
        bt=new JButton("Show ComboBox Input");
        bt.addActionListener(this);
        pa.add(bt);
        lb= new JLabel(" ",JLabel.CENTER);
        cp.add(lb,BorderLayout.NORTH);
        cp.add(pa,BorderLayout.CENTER);
        f.pack();
        f.setVisible(true);
        f.addWindowListener(new WinLis());
      }    
    class WinLis extends   WindowAdapter
      {
         public void windowClosing(WindowEvent e) {
                System.exit(0);
            }
      }
    public static void main(String[] args)
     {
        new c11_14();
     }
    
    public void actionPerformed(ActionEvent e) 
    {
        String cmd = e.getActionCommand();
        String title = "Input Dialog";
        String message ="您最熟悉哪一种程序语言？";
        int messageType = JOptionPane.QUESTION_MESSAGE;
        String[] values = {"VB","C++","JAVA","ASP","PHP"};
        String result ="";

        if(cmd.equals("Show Text Input")) {
            result = JOptionPane.showInputDialog(f, message, 
                     title, messageType);
            
        } else if(cmd.equals("Show ComboBox Input")) {
            result = (String)JOptionPane.showInputDialog(f, message, 
                     title, messageType,null,values,values[0]);
        }
    
        if (result == null) lb.setText("您取消了对话框");
        else  lb.setText("您输入："+result);
    }
}



