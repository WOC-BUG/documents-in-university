import java.awt.*;
import java.awt.event.*;
import javax.swing.*;
public class c11_4  extends JApplet 
   {
     public void init()
      {
        Container cp=getContentPane();
        Box bBox=Box.createHorizontalBox(); //����bBox�е������ˮƽ��������
        cp.add(bBox);  //��bBox������ӵ�cp������
        //bBox�з���vBox1����
        Box vBox1=Box.createVerticalBox();//����bBox1�е��������ֱ��������
        JLabel lb=new JLabel("���Ǳ�ǩ");  
        vBox1.add(lb);    //��ӱ�ǩ��vBox1��
        JButton bt1=new JButton("���ǰ�ť1");
        bt1.setMaximumSize(new Dimension(100,200)); //���ð�ť����󳤶�
        vBox1.add(bt1);  //��Ӱ�ť��vBox1��
        bBox.add(vBox1); //���vBox1��bBox��
        //bBox�з���vBox2����
        Box vBox2=Box.createVerticalBox();
        bBox.add(vBox2);
        JTextField tf1=new JTextField("�����ı���",10);
       //�����ı�������������X������ж���
        tf1.setAlignmentX(Component.CENTER_ALIGNMENT);
        tf1.setMaximumSize(new Dimension(150,50));
        vBox2.add(tf1);
        //vBox2�����з���vBox2h����
        Box vBox2h=Box.createHorizontalBox(); //vBox2h�����ϵ������ˮƽ��������
        vBox2.add(vBox2h);
        //vBox2h�����з���vBox2h1
        Box vBox2h1=Box.createVerticalBox();
        //���봹ֱ͸�����Strut�����Ϊ20����
            vBox2h1.add(Box.createVerticalStrut(20)); 
            vBox2h1.add(new JTextArea("�����ı�����",15,10));
            vBox2h1.add(Box.createVerticalStrut(20));
            vBox2h.add(vBox2h1);
         // vBox2h�����з���vBox2h2
            Box vBox2h2=Box.createVerticalBox();
          vBox2h2.add(new JButton("���ǰ�ť2"));
            vBox2h2.add(Box.createVerticalGlue());//���봹ֱ͸�����Glue�������������
            vBox2h2.add(new JButton("���ǰ�ť4"));
            vBox2h.add(vBox2h2);
    }   
}

