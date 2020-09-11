public class c13_4
  {
     public static void main(String [] args)
 {
     HoldInt h=new HoldInt();  //hΪ�����
     ProduceInt p=new ProduceInt(h);
     ConsumeInt c=new ConsumeInt(h);
     p.start();
     c.start();
    }
 }
  class HoldInt
   { private int sharedInt;
     private boolean writeAble=true; //writeAble==true��ʾ�������߳�������������
     public synchronized void set(int val)  //�ٽ�������Σ�Ҳ��Ϊͬ������
      {
         while(!writeAble)
          { //�������̲߳�������������ʱ����ȴ�
            try {wait();}
            catch(InterruptedException e){}
          }//�����߱����Ѻ����ִ����������
         writeAble=false;
         sharedInt=val;
         notify();
      }
     public synchronized int get()  //ͬ������
      {
         while(writeAble)
          { //�������̲߳�����������ʱ����ȴ�״̬
            try {  wait();  }
            catch(InterruptedException e){}
          }//�����߱����Ѻ����ִ����������
         writeAble=true;
         notify();
         return sharedInt;
      }
  }     
//ProduceInt ���������߳�
  class ProduceInt extends Thread {
   private HoldInt hi;
   public ProduceInt(HoldInt hiForm)
      { hi=hiForm; }
   public void run( )
      {  for(int i=1;i<=4;i++)
          {  hi.set(i);
             System.out.println("��������������: "+ i);
          }
      }
   }
//ConsumeInt ���������߳�
  class ConsumeInt extends Thread {
   private HoldInt hi;
   public ConsumeInt(HoldInt hiForm)
      { hi=hiForm; }
   public void run( )
      {
        for(int i=1;i<=4;i++)
          {  int val=hi.get();
             System.out.println("������������: "+ val);
          }
      }
   }

