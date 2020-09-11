public class Example9_9 {
   public static void main (String args[ ]) {
      String regex="[1-9][0-9]*[.]?[0-9]*" ;
      String str1="12r34a5";
      String str2="123.45908";
      if(str1.matches(regex)) {
         System.out.println(str1+"可以表示数字"); 
      }
      else {
          System.out.println(str1+"不可以表示数字"); 
          String result=str1.replaceAll("\\D+","");
          System.out.println("剔除"+str1+"的非数字字符得到的字符串是：");
          System.out.println(result);
      }
      if(str2.matches(regex)) {
         System.out.println(str2+"可以表示数字"); 
      }  
      else {
         System.out.println(str2+"不可以表示数字");
         String result=str1.replaceAll("\\D","");
         System.out.println("剔除"+str2+"的非数字字符得到的字符串是：");
         System.out.println(result); 
      }
     
   }
}

