public class China {
   final String song="义勇军进行曲";
   private Beijing beijing; //内部类声明的对象，作为外嵌类的成员
   China() {
      beijing=new Beijing();
   }
   public Beijing getBeijing() {
      return beijing;
   }
   String getSong() {
      return song;
   }
   class Beijing {     //内部类的声明
      String name="北京";
      void speak() {
         System.out.printf("%s\n%s","我们是"+name,"我们的国歌是:"+getSong());
      }
   }
}
