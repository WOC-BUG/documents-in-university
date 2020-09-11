import java.awt.*;
import java.awt.event.*;
import javax.swing.*;
import javax.swing.event.*;
public class c10_4 extends JApplet implements ListSelectionListener
{   JList lis=null;
    JLabel lb=null;
    String[] s={"小学","初中","高中","大学","研究生"};
    public void init()
     {  Container cp=getContentPane();
        cp.setLayout(new BorderLayout());
        lb=new JLabel();
        lis=new JList(s);
        lis.setVisibleRowCount(3);  //设置列表框的可见选项行数，选项超过则出现滚动条
        lis.setBorder(BorderFactory.createTitledBorder("请选择"));//设置列表框的边框文本
        lis.addListSelectionListener(this);  //注册lis给监听者对象
        cp.add(lb,BorderLayout.NORTH);
         //将lis对象放入滚动容器，再将此容器加载到界面上。
        cp.add(new JScrollPane(lis),BorderLayout.CENTER);
      }
     public void valueChanged(ListSelectionEvent e)
     {  int m=0;
         String str="选取的是：";
         //取得所有选项的下标值给index数组
         int[] index = lis.getSelectedIndices();
         for(int i=0;i<index.length;i++)
       { //根据取得的下标值，找到相应的数组元素
            m=index[i];
            str=str+s[m]+"  ";
          }
         lb.setText(str);//输出选中项的值
     }
}

