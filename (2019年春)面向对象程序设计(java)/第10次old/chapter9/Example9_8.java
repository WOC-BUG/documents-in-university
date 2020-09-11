public class Example9_8 {
    public static void main(String args[]) {
       byte d[]="abc你我他".getBytes();           
       System.out.println("数组d的长度是(一个汉字占两个字节):"+d.length);
       String s=new String(d,3,2); //输出：你
       System.out.println(s);
       s=new String(d,7,2);
       System.out.println(s); //输出：他
    }
}
