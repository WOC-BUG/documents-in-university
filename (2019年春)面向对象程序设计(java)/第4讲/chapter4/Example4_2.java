class Point {
   int x,y;
   Point(int a,int b) {
      x=a;
      y=b;
   }
   void setpoint(int a,int b)
   {
	   x=a;
	   y=b;
   }
   void getpoint()
   {
	   System.out.println("x="+x+";"+"y="+y);
   }
}
public class Example4_2 {
   public static void main(String args[]) {
      Point point1,point2;        //声明对象point1和point2
      point1=new Point(10,10);    //为对象分配内存，使用 new 和类中的构造方法
      point2=new Point(23,35);    //为对象分配内存，使用 new 和类中的构造方法
      point1.setpoint(1, 1);
      point1.getpoint();
      point2=point1;
      point2.getpoint();
   }
}
