class c13_3
{
   public static void main(String args[])
   {  Thread First=new MyThread("A");  //创建A线程
      First.setPriority(Thread.MIN_PRIORITY);//A线程优先级为1
      Thread Second=new MyThread("B");  //创建B线程
      Second.setPriority(Thread.NORM_PRIORITY+1); //B线程优先级为6
      Thread Third=new MyThread("C");   //创建C线程
      Third.setPriority(Thread.MAX_PRIORITY); //C线程优先级为10
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

