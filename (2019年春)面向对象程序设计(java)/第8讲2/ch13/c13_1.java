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
            now=Calendar.getInstance();         //ȡϵͳʱ��
            year=now.get(Calendar.YEAR);        //ȡ��ֵ
            month=now.get(Calendar.MONTH)+1;    //ȡ��ֵ
            date=now.get(Calendar.DATE);        //ȡ����ֵ
            hour=now.get(Calendar.HOUR_OF_DAY); //ȡСʱֵ
            minute=now.get(Calendar.MINUTE);    //ȡ��ֵ
            second=now.get(Calendar.SECOND);    //ȡ��ֵ
System.out.println("  "+name+"ʱ��: "+year+" �� "+month+" �� "+
date+" �� "+ hour+" Сʱ "+minute+" �� "+second+" ��"); //��ʾʱ��
            Thread.sleep(pauseTime);
         }
catch(Exception e)
  {
           System.out.println("�̴߳���"+e);
       }
    }
  }
  static public void main(String args[]) {
     c13_1 myThread1 = new c13_1(2000, "�߳�A");//A�߳�ִ��һ�κ�˯��2000����
     myThread1.start();
     c13_1 myThread2 = new c13_1(1000, "�߳�B");//B�߳�ִ��һ�κ�˯��1000����
     myThread2.start();
  }
}

