////一定要导入这两个包，因为定义窗口对象的类就在此处！
//import javax.swing.*;
//import java.awt.*; 
//public class win {
//		//程序的主类“继承”于JFrame类，获得其各种窗口功能！
//		public class MyWindows extends JFrame{
//		//同其它对象一样，窗口对象的各种属性也要在构造方法中初始化！
//		    public MyWindows(){
//		//初始化的第一步：一定要调用父类JFrame的构造方法，
//		//把窗口的标题文字作为参数传进去！
//		    super(“我的第一个窗口程序”);   //注意super关键字
//		//初始化的第二步：设置窗口的大小！
//		    setSize(800,600);    //继承于JFrame类的方法
//		//初始化的第三步：让窗口显示出来！
//		    setVisible(true);    //继承于JFrame类的方法
//		}
//		    public static void main(String[] args){
//		      //主方法中只作一件事情：把一个窗口对象创建出来！
//		    MyWindows mw = new MyWindows();
//		}
//	}
//}
