
import java.io.*;
public class Ch14_pat
{
   public static void main(String args[])
   { 
	   String s;
      try
      {
    	  FileInputStream f = new FileInputStream("C:\\xx\\PATF.000");
          int num = f.available();
          int[] buf=new int[num];
          byte[] buf_tem = new byte[num];
          f.read(buf_tem);
          f.close();
          for(int i=0;i<buf.length;i++)
          {
          	if(buf_tem[i]<0) buf[i] = buf_tem[i] - 0xffffff00;
          	else buf[i] = buf_tem[i];
        	  //buf[i] = buf_tem[i];
          }
          int be31=0;
          int ue31;
   		  while((be31)<64)
   		  {	  
   		  //if((descriptor_lenth-b)>16)
   		  //{
   			  s="0x";
   			  for(int i=0;i<16;i++)
   		  {
   			  ue31=buf[i+be31];
   		      if(ue31<0x10)
   		      {s=s+"0"+Integer.toHexString(ue31)+"  ";} 
   		      else
   		      {s=s+Integer.toHexString(ue31)+"  ";}  
   		  }
   		  System.out.println(s);
   		  //}
   		  be31=be31+16;
   		  }
   		/**s="0x";
			  for(int i=0;i<num-be31;i++)
		  {
			  ue31=buf[i+be31];
		      if(ue31<0x10)
		      {s=s+"0"+Integer.toHexString(ue31)+"  ";} 
		      else
		      {s=s+Integer.toHexString(ue31)+"  ";}  
		  }
		  System.out.println(s);*/
      }
      catch(Exception E)
      {   System.out.println("I/O´íÎó!");  }
   }
}

