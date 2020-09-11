import java.util.*;
public class Example9_13 {
   public static void main(String args[]) {
      String s="we are stud,ents";
      StringTokenizer fenxi=new StringTokenizer(s," ,"); //注意,前有一空格符，即分隔标记为，或空格
      int number=fenxi.countTokens();
      while(fenxi.hasMoreTokens()) {
          String str=fenxi.nextToken();
          System.out.println(str);
          System.out.println("还剩"+fenxi.countTokens()+"个单词");
      }
      System.out.println("s共有单词："+number+"个");
    } 
}
