import java.util.*;
import static java.util.Calendar.*; //��̬����Calendar��ľ�̬����
public class Example9_15 {
   public static void main(String args[]) {
      Calendar calendar=Calendar.getInstance();   
      calendar.setTime(new Date());       
      String  ��=String.valueOf(calendar.get(YEAR)),
              ��=String.valueOf(calendar.get(MONTH)+1),
              ��=String.valueOf(calendar.get(DAY_OF_MONTH)),
              ����=String.valueOf(calendar.get(DAY_OF_WEEK)-1);
      int hour=calendar.get(HOUR_OF_DAY),
          minute=calendar.get(MINUTE),
          second=calendar.get(SECOND);
      System.out.print("���ڵ�ʱ���ǣ�");
      System.out.print(""+��+"��"+��+"��"+��+"�� "+ "����"+����);
      System.out.println(" "+hour+"ʱ"+minute+"��"+second+"��");
      int year=1945,month=8,day=15;       
      calendar.set(year,month-1,day);  //����������1945��8��15��,ע��7��ʾ����
      System.out.print(year+"��"+month+"��"+day+"����");
      long time2=calendar.getTimeInMillis();
      year=1931;
      month=9;
      day=18;
      calendar.set(year,month-1,day);  //����������1931��9��18��
      System.out.print(year+"��"+month+"��"+day+"��");
      long time1=calendar.getTimeInMillis();
      long �������=(time2-time1)/(1000*60*60*24);
      System.out.println("���"+�������+"��");
    }  
}

