public class Example3_1 {
   public static void main(String args[]) {
      char a1='A',a2='B',a3='C',a4='D';
      char secret='A';
      a1=(char)(a1^secret);   
      a2=(char)(a2^secret);
      a3=(char)(a3^secret);   
      a4=(char)(a4^secret);
      System.out.println("ÃÜÎÄ:"+a1+a2+a3+a4);
      a1=(char)(a1^secret);   
      a2=(char)(a2^secret);
      a3=(char)(a3^secret);  
      a4=(char)(a4^secret);
      System.out.println("Ô­ÎÄ:"+a1+a2+a3+a4);
   }
}


