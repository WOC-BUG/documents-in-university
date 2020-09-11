import java.awt.*;
import javax.swing.*;
import java.awt.event.*;
public class c11_13 implements ActionListener
{
    JFrame f = null;    
    public c11_13() 
    {
        f = new JFrame("OptionPane Demo");
        Container cp= f.getContentPane();
        cp.setLayout(new GridLayout(2,2));
        JButton bt=new JButton("Show Error Icon");
        bt.addActionListener(this);
        cp.add(bt);
        bt=new JButton("Show Warning Icon");
        bt.addActionListener(this);
        cp.add(bt);
        bt= new JButton("Show Plain Icon");
        bt.addActionListener(this);
        cp.add(bt);
        bt= new JButton("Show User Define Icon");
        bt.addActionListener(this);
        cp.add(bt);
        f.pack();
        f.setVisible(true);
        f.addWindowListener(new WinLis());
      }    
     class WinLis extends WindowAdapter
      { public void windowClosing(WindowEvent e) 
         { System.exit(0); }
      }
     public static void main(String[] args)
      {
        new c11_13();
      }
     public void actionPerformed(ActionEvent e) 
      {
        String cmd = e.getActionCommand();
        String title = "Message Dialog";
        String message ="";
        int type = JOptionPane.PLAIN_MESSAGE;
        if(cmd.equals("Show Error Icon")) {
            type = JOptionPane.ERROR_MESSAGE;
            message = " Error Message";
        } else if(cmd.equals("Show Warning Icon")) {
            type = JOptionPane.WARNING_MESSAGE;
            message = " Warning Message";
        } else if(cmd.equals("Show Plain Icon")) {
            type = JOptionPane.PLAIN_MESSAGE;
            message = " Plain Message";
        } else if(cmd.equals("Show User Define Icon")) {
            type = JOptionPane.PLAIN_MESSAGE;
            message = " User Define Message";
            JOptionPane.showMessageDialog(f, message, title, 
                        type, new ImageIcon("g1.gif"));
            return;
        }
    
        JOptionPane.showMessageDialog(f,message,title,type);
    }
}

