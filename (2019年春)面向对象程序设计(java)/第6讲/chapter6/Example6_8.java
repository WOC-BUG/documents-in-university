public class Example6_8 {
   public static void main(String args[]) {
      try{ 
           Class cs=Class.forName("Circle");
           Circle circle=(Circle)cs.newInstance();
           circle.setRadius(100);
           System.out.println("circle�����"+circle.getArea());
           System.out.println("circle���ܳ�"+circle.getLength());
       }
       catch(Exception e) {
           System.out.println("���ܼ���Rect��"+e.getMessage());
       } 
   }  
}
