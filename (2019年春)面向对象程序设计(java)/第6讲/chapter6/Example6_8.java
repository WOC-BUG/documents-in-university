public class Example6_8 {
   public static void main(String args[]) {
      try{ 
           Class cs=Class.forName("Circle");
           Circle circle=(Circle)cs.newInstance();
           circle.setRadius(100);
           System.out.println("circle的面积"+circle.getArea());
           System.out.println("circle的周长"+circle.getLength());
       }
       catch(Exception e) {
           System.out.println("不能加载Rect类"+e.getMessage());
       } 
   }  
}
