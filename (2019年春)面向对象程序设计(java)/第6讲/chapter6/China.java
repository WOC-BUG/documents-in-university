public class China {
   final String song="���¾�������";
   private Beijing beijing; //�ڲ��������Ķ�����Ϊ��Ƕ��ĳ�Ա
   China() {
      beijing=new Beijing();
   }
   public Beijing getBeijing() {
      return beijing;
   }
   String getSong() {
      return song;
   }
   class Beijing {     //�ڲ��������
      String name="����";
      void speak() {
         System.out.printf("%s\n%s","������"+name,"���ǵĹ�����:"+getSong());
      }
   }
}
