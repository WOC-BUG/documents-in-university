import java.util.*;
import static java.util.Calendar.*; //静态导入Calendar类的静态常量
public class Example9_15 {
   public static void main(String args[]) {
      Calendar calendar=Calendar.getInstance();   
      calendar.setTime(new Date());       
      String  年=String.valueOf(calendar.get(YEAR)),
              月=String.valueOf(calendar.get(MONTH)+1),
              日=String.valueOf(calendar.get(DAY_OF_MONTH)),
              星期=String.valueOf(calendar.get(DAY_OF_WEEK)-1);
      int hour=calendar.get(HOUR_OF_DAY),
          minute=calendar.get(MINUTE),
          second=calendar.get(SECOND);
      System.out.print("现在的时间是：");
      System.out.print(""+年+"年"+月+"月"+日+"日 "+ "星期"+星期);
      System.out.println(" "+hour+"时"+minute+"分"+second+"秒");
      int year=1945,month=8,day=15;       
      calendar.set(year,month-1,day);  //将日历翻到1945年8月15日,注意7表示八月
      System.out.print(year+"年"+month+"月"+day+"日与");
      long time2=calendar.getTimeInMillis();
      year=1931;
      month=9;
      day=18;
      calendar.set(year,month-1,day);  //将日历翻到1931年9月18日
      System.out.print(year+"年"+month+"月"+day+"日");
      long time1=calendar.getTimeInMillis();
      long 相隔天数=(time2-time1)/(1000*60*60*24);
      System.out.println("相隔"+相隔天数+"天");
    }  
}

