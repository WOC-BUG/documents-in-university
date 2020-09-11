import java.lang.reflect.*;
public class Example6_7 {
   public static void main(String args[]) {
      Rect rect=new Rect();
      Class cs=rect.getClass();
      String className=cs.getName();
      Constructor[] con=cs.getDeclaredConstructors();
      Field[] field=cs.getDeclaredFields() ;
      Method[] method=cs.getDeclaredMethods();
      System.out.println("类的名字:"+className);
      System.out.println("类中有如下的成员变量:");
      for(int i=0;i<field.length;i++) {
         System.out.println(field[i].toString());
      }
      System.out.println("类中有如下的方法:");
      for(int i=0;i<method.length;i++) {
         System.out.println(method[i].toString());
      }
      System.out.println("类中有如下的构造方法:");
      for(int i=0;i<con.length;i++) {
         System.out.println(con[i].toString());
      }
   }  
}

