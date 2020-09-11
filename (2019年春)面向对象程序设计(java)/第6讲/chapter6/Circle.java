public class Circle {
   private double radius,area,length;
   public double getArea() {
      area=Math.PI*radius*radius;
      return area;
   }
   public double getLength() {
      length=2*Math.PI*radius;
      return length;
   }
   public void setRadius(double r) {
      radius=r;
   }
}



