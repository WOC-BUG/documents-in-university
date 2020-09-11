import java.awt.*;
import java.awt.event.*;
import javax.swing.*;
public class c11_10 implements AdjustmentListener
{
    int r=0,g=0,b=0;
    String s,s1=" ",s2=" ",s3=" ";  
    JScrollBar sbr,sbg,sbb;  //声明建滚动条对象
    JPanel pa1,pa2,pa3;
    JLabel lb1= new JLabel("刻度："),
           lb2=new JLabel(" 标签 "),
           lb3=new JLabel("    调色版  "),
           lbr=new JLabel("红色"),
           lbg=new JLabel("绿色"),
           lbb=new JLabel("蓝色");
    public c11_10()
      { JFrame f = new JFrame("JScrollBar");
        Container cp=f.getContentPane();
        Box baseBox=Box.createVerticalBox();
        cp.add(baseBox);     
        Box box1=Box.createHorizontalBox();
        box1.add(lb1); 
        box1.add(lb2);
        baseBox.add(box1);  
        Box box3=Box.createVerticalBox();
        baseBox.add(box3);  
        lb3.setBackground(new Color(0,0,0));//设置标签颜色
        lb3.setBorder(BorderFactory.createEtchedBorder());//设置标签边框
        lb3.setOpaque(true); //让组件变为不透明使标签颜色显示出
        lb3.setMaximumSize(new Dimension(450,200));
        box3.add(lb3);
        sbr=new JScrollBar(JScrollBar.HORIZONTAL,10,10,0,260); //创建水平方向滚动条对象
        sbr.setUnitIncrement(5);  //设置此滚动条的单位增量（拖动滚动轴）
        sbr.setBlockIncrement(10); //设置此滚动条的块增量（鼠标点击滚动轴）
        sbr.addAdjustmentListener(this); //注册sbr给监听对象
        box3.add(lbr); box3.add(sbr);
        sbg=new JScrollBar(JScrollBar.HORIZONTAL,10,10,0,260);
        sbg.setUnitIncrement(5);
        sbg.setBlockIncrement(10);
        sbg.addAdjustmentListener(this);
        box3.add(lbg); box3.add(sbg);
        sbb=new JScrollBar(JScrollBar.HORIZONTAL,10,10,0,260);
        sbb.setUnitIncrement(5);
        sbb.setBlockIncrement(10);
        sbb.addAdjustmentListener(this);
        box3.add(lbb);box3.add(sbb);
        f.pack();
        f.setVisible(true);
        f.addWindowListener(new WinLis());
     }
    class WinLis extends WindowAdapter
      { public void windowClosing(WindowEvent e) 
         { System.exit(0); }
      }  
    public void adjustmentValueChanged(AdjustmentEvent e)
    {   if ((JScrollBar)e.getSource()==sbr)
           { r=e.getValue(); s1="red: ";}
        if ((JScrollBar)e.getSource()==sbg)
           { g=e.getValue(); s2="green: ";}
        if ((JScrollBar)e.getSource()==sbb)
           { b=e.getValue(); s3="blue: ";}
        s=s1+r+" "+s2+g+" "+s3+b;
        lb2.setText(s);
        lb3.setBackground(new Color(r,g,b));
    }
    public static void main(String[] arg)
    {  new c11_10();    }
}

