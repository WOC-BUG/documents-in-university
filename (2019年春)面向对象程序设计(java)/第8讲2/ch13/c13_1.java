import java.util.*;
class c13_1 extends Thread {
   int pauseTime;
   String name;
   public c13_1(int hTime, String hStr)
 {
     pauseTime = hTime;
     name = hStr;
   }
   public void run() {
      Calendar now;   
      int year,month,date,hour,minute,second;
      for(int i=1;i<10;i++) {
         try {
            now=Calendar.getInstance();         //取系统时间
            year=now.get(Calendar.YEAR);        //取年值
            month=now.get(Calendar.MONTH)+1;    //取月值
            date=now.get(Calendar.DATE);        //取日期值
            hour=now.get(Calendar.HOUR_OF_DAY); //取小时值
            minute=now.get(Calendar.MINUTE);    //取分值
            second=now.get(Calendar.SECOND);    //取秒值
System.out.println("  "+name+"时间: "+year+" 年 "+month+" 月 "+
date+" 日 "+ hour+" 小时 "+minute+" 分 "+second+" 秒"); //显示时间
            Thread.sleep(pauseTime);
         }
catch(Exception e)
  {
           System.out.println("线程错误："+e);
       }
    }
  }
  static public void main(String args[]) {
     c13_1 myThread1 = new c13_1(2000, "线程A");//A线程执行一次后睡眠2000毫秒
     myThread1.start();
     c13_1 myThread2 = new c13_1(1000, "线程B");//B线程执行一次后睡眠1000毫秒
     myThread2.start();
  }
}

