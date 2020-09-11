import javax.swing.*;
import java.awt.event.*;
public class c11_12 extends JFrame implements ActionListener
 {
      JTextArea tf=new JTextArea();
      JMenuBar bar=new JMenuBar();  //创建JMenuBar对象
      JMenu menu=new JMenu("文件"); //创建JMenu对象
      JMenuItem newf=new JMenuItem("新建");//创建JMenuItem对象
      JMenuItem open=new JMenuItem("打开");
      JMenuItem close=new JMenuItem("关闭");    
      JMenuItem quit=new JMenuItem("退出");
       public c11_12() 
        { super("c11_12");       //设定JFrame的标签
          getContentPane().add(new JScrollPane(tf)); //创建JFrame的容器对象 
          tf.setEditable(false); //设置文本区域不可编辑
          bar.setOpaque(true);   //设置bar为不透明
          setJMenuBar(bar);      //加入bar到JFrame
          menu.add(newf);       //加入JMenuItem对象到menu中
          menu.add(open);
          menu.add(close);        
          menu.addSeparator();  //在JMenu中加入一分隔线
          menu.add(quit);
          bar.add(menu);      //将menu加载到bar上 
          newf.addActionListener(this);  //注册JMenuItem对象给监者对象
          open.addActionListener(this);
          close.addActionListener(this);
          quit.addActionListener(this);
          addWindowListener(new WinLis());
       }
       public void actionPerformed(ActionEvent e)
          {
           if(e.getSource()==newf)tf.setText(" 新建");
           if(e.getSource()==open)tf.setText(" 打开");
           if(e.getSource()==close)tf.setText(" 关闭");
           if(e.getSource()==quit)System.exit(0);
           }
       class WinLis extends  WindowAdapter
         {
	    public void windowClosing(WindowEvent e)
             { System.exit(0); }
          }
       public static void main(String[] args){
          JFrame f = new c11_12();
          f.setSize(400,200);
          f.setVisible(true); 
                   } 
}

