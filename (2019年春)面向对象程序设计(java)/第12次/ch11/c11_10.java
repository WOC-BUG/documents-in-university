import java.awt.*;
import java.awt.event.*;
import javax.swing.*;
public class c11_10 implements AdjustmentListener
{
    int r=0,g=0,b=0;
    String s,s1=" ",s2=" ",s3=" ";  
    JScrollBar sbr,sbg,sbb;  //����������������
    JPanel pa1,pa2,pa3;
    JLabel lb1= new JLabel("�̶ȣ�"),
           lb2=new JLabel(" ��ǩ "),
           lb3=new JLabel("    ��ɫ��  "),
           lbr=new JLabel("��ɫ"),
           lbg=new JLabel("��ɫ"),
           lbb=new JLabel("��ɫ");
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
        lb3.setBackground(new Color(0,0,0));//���ñ�ǩ��ɫ
        lb3.setBorder(BorderFactory.createEtchedBorder());//���ñ�ǩ�߿�
        lb3.setOpaque(true); //�������Ϊ��͸��ʹ��ǩ��ɫ��ʾ��
        lb3.setMaximumSize(new Dimension(450,200));
        box3.add(lb3);
        sbr=new JScrollBar(JScrollBar.HORIZONTAL,10,10,0,260); //����ˮƽ�������������
        sbr.setUnitIncrement(5);  //���ô˹������ĵ�λ�������϶������ᣩ
        sbr.setBlockIncrement(10); //���ô˹������Ŀ�����������������ᣩ
        sbr.addAdjustmentListener(this); //ע��sbr����������
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

