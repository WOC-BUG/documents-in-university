import java.util.Date;
import java.text.SimpleDateFormat;
public class Example9_14 {
   public static void main(String args[]) {
      Date nowTime=new Date();
      System.out.println("现在的时间:"+nowTime);
      //Date nowTime1=new Date(2000);
      //System.out.println("现在的时间:"+nowTime1);
      SimpleDateFormat matter1=
      new SimpleDateFormat(" 'Now Time:' y年M月d日H时m分s秒");
      String timePattern=matter1.format(nowTime);
      System.out.println(timePattern);
      SimpleDateFormat matter2=
      new SimpleDateFormat("G yyyy年MMMd日E HH时mm分ss秒z");
      timePattern=matter2.format(nowTime);
      System.out.println(timePattern);
      long time=System.currentTimeMillis();
      System.out.println("从"+matter2.format (new Date(6123210)) +
                         "至现在是：\n"+time+"毫秒");
      System.out.println("现在的时间:"+new Date(time));
    }
}
