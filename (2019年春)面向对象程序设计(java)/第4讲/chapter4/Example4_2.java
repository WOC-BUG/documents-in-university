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
      Point point1,point2;        //��������point1��point2
      point1=new Point(10,10);    //Ϊ��������ڴ棬ʹ�� new �����еĹ��췽��
      point2=new Point(23,35);    //Ϊ��������ڴ棬ʹ�� new �����еĹ��췽��
      point1.setpoint(1, 1);
      point1.getpoint();
      point2=point1;
      point2.getpoint();
   }
}
