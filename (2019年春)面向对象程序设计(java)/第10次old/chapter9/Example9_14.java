import java.util.Date;
import java.text.SimpleDateFormat;
public class Example9_14 {
   public static void main(String args[]) {
      Date nowTime=new Date();
      System.out.println("���ڵ�ʱ��:"+nowTime);
      //Date nowTime1=new Date(2000);
      //System.out.println("���ڵ�ʱ��:"+nowTime1);
      SimpleDateFormat matter1=
      new SimpleDateFormat(" 'Now Time:' y��M��d��Hʱm��s��");
      String timePattern=matter1.format(nowTime);
      System.out.println(timePattern);
      SimpleDateFormat matter2=
      new SimpleDateFormat("G yyyy��MMMd��E HHʱmm��ss��z");
      timePattern=matter2.format(nowTime);
      System.out.println(timePattern);
      long time=System.currentTimeMillis();
      System.out.println("��"+matter2.format (new Date(6123210)) +
                         "�������ǣ�\n"+time+"����");
      System.out.println("���ڵ�ʱ��:"+new Date(time));
    }
}
