class c13_3
{
   public static void main(String args[])
   {  Thread First=new MyThread("A");  //����A�߳�
      First.setPriority(Thread.MIN_PRIORITY);//A�߳����ȼ�Ϊ1
      Thread Second=new MyThread("B");  //����B�߳�
      Second.setPriority(Thread.NORM_PRIORITY+1); //B�߳����ȼ�Ϊ6
      Thread Third=new MyThread("C");   //����C�߳�
      Third.setPriority(Thread.MAX_PRIORITY); //C�߳����ȼ�Ϊ10
      First.start();
      Third.start();
      Second.start();
   }
}
class MyThread extends Thread 
{
   String message;
   MyThread(String message)
  { this.message= message;}
   public void run( ) 
   { 
       for (int i=0;i<2;i++)
       System.out.println(message+"  "+getPriority());
    }
}

