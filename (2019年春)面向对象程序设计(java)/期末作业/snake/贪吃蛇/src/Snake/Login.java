 package Snake;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.KeyEvent;
import java.awt.event.KeyListener;
import java.util.ArrayList;
import java.util.List;

import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;

public class Login extends JFrame implements KeyListener, ActionListener {

	private static final long serialVersionUID = 1L;


	private JPanel mainPanel;

	private JLabel snake;
	
	private JLabel setNumber;

	private JLabel worm;

	JButton xuyang, jingwei;

	private int moveDir = 1;
	boolean isDie = false;

	//蛇的坐标
	int snakeX = 0;
	int snakeY = 0;
	int snakeOldX = 0;
	int snakeOldY = 0;
	
	//蛇吃到的虫子的数量
	int wormNumber=0;
	
	//虫子坐标
	int wormX = 0;
	int wormY = 0;
	
	//关卡数
	int num=1;
	
	//标记是否吃到虫子
	boolean flag = false;
	
	//通过链表存储蛇的每一节身体
	private List<JLabel> snakeList;

	public static void main(String[] args) {
		new Music();
		new Login();
	}

	public Login() {
		setUI();
	}
	
	//UI方法
	private void setUI() {
		this.setTitle("Java贪吃蛇 徐杨、荆薇");

		snakeList = new ArrayList<JLabel>();

		mainPanel = new JPanel() {
		//主背景
			private static final long serialVersionUID = 1L;

			@Override
			protected void paintComponent(Graphics g) {
				ImageIcon image = new ImageIcon("Photos/01.png");
				ImageIcon image2 = new ImageIcon("Photos/03.png");

				g.drawImage(image.getImage(), 0, 0, null);
				g.drawImage(image2.getImage(), 800, 0, null);
			}
		};
		mainPanel.setLayout(null);

		//显示关卡
		paintNumber(num);
		
		snake = new JLabel() {

			private static final long serialVersionUID = 1L;

			@Override
			protected void paintComponent(Graphics g) {

				ImageIcon s = new ImageIcon("Photos/02.png");
				g.drawImage(s.getImage(), 0, 0, null);
			}
		};
		snake.setBounds(0, 0, PubStaticVar.STEP, PubStaticVar.STEP);//设置初始位置及大小
		mainPanel.add(snake);
		snakeList.add(snake);

		JPanel btns = new JPanel();
		btns.setLayout(new GridLayout(2,1));//网格布局，两行一列
		xuyang = new JButton("GoGoGo");
		xuyang.addActionListener(this);
		btns.add(xuyang);
		jingwei = new JButton("再来一遍");
		jingwei.addActionListener(this);

		btns.add(jingwei);
		btns.setBounds(800, 0, 100, 50);//放在主背景右侧
		mainPanel.add(btns);

		this.setFocusable(true);
		this.add(mainPanel);
		this.setResizable(false);//不可更改游戏窗口大小
		this.setLocation(PubStaticVar.POS_X, PubStaticVar.POS_Y);
		this.setSize(PubStaticVar.SIZE_X+112, PubStaticVar.SIZE_Y);
		this.setVisible(true);
		this.setDefaultCloseOperation(EXIT_ON_CLOSE);//退出操作

	}

	//显示关卡数
	public void paintNumber(int num) {
		String text="第"+num+"关";
		setNumber = new JLabel(text);
		setNumber.setFont(new Font("宋体", Font.PLAIN, 20)); //设置字体大小
		setNumber.setForeground(Color.CYAN);
		mainPanel.add(setNumber);
		setNumber.setBounds(820, 100, 100, 100);
	}
	
	protected void setRandomWorm() {//随机刷新虫子

		Color c=new Color(72,61,139);
		worm = new JLabel("");
		worm.setOpaque(true);//设置控件可见，不透明
		worm.setBackground(c);//深蓝色
		wormX = (int) (Math.random() * 35) * PubStaticVar.STEP;
		wormY = (int) (Math.random() * 35) * PubStaticVar.STEP;//坐标刷新范围
		worm.setBounds(wormX, wormY, PubStaticVar.STEP, PubStaticVar.STEP);//设置位置
		
		mainPanel.add(worm);
		mainPanel.updateUI();
	}

	protected void setKeyFoucs() {
		this.addKeyListener(this);//添加案件监听器
		this.requestFocus();//光标进入控件中
	}

	
	private void moveAuto() {//蛇的移动
		this.setFocusable(true);
		snakeX = snake.getX();
		snakeY = snake.getY();

		new Thread() {
			public void run() {

				while (!isDie) {
					
					snakeOldX = snakeX;
					snakeOldY = snakeY;
					
					switch (moveDir) {//移动方向
					case 1:
						snakeX += PubStaticVar.STEP;
						break;

					case 2:
						snakeX -= PubStaticVar.STEP;
						break;

					case 3:
						snakeY -= PubStaticVar.STEP;
						break;

					case 4:
						snakeY += PubStaticVar.STEP;
						break;
					}
					moveSnake(snakeX, snakeY);

					try {
						sleep(PubStaticVar.MOVE_RATE-num*10);//通过num控制休眠时间
					} catch (InterruptedException e) {
						e.printStackTrace();
					}

				}

			};
		}.start();

	}

	@Override
	public void keyPressed(KeyEvent e) {//读取键盘方向键操作

		switch (e.getKeyCode()) {
		case KeyEvent.VK_UP:
			moveDir = 3;
			break;
		case KeyEvent.VK_DOWN:
			moveDir = 4;
			break;
		case KeyEvent.VK_LEFT:
			moveDir = 2;
			break;
		case KeyEvent.VK_RIGHT:
			moveDir = 1;
			break;
		}
	}

	private void moveSnake(int x, int y) {//蛇的移动
		Color c=new Color(255,222,173);

		//撞到边界为死亡
		if (x >= 0 && x <= PubStaticVar.SIZE_X - PubStaticVar.STEP) {
			if (y >= 0 && y <= PubStaticVar.SIZE_Y - PubStaticVar.STEP * 8) {
				// setSnakeLocation(x, y);
				snake.setLocation(x, y);
				if (!flag) {
					for (int i = 1; i < snakeList.size(); i++) {
						JLabel jl = snakeList.get(i);
						int oldX = jl.getX();
						int oldY = jl.getY();
						jl.setLocation(snakeOldX, snakeOldY);
						
						snakeOldX = oldX;
						snakeOldY = oldY;
						
					}
				}
				flag = false;

				if (snakeX == wormX && snakeY == wormY) {
					//吃到虫子
					wormNumber++;
					//System.out.println("wormNumber= "+wormNumber);
					if(wormNumber==10)//吃十个虫子为一关
					{
						if(num==20)//上限20关
						{
							//System.out.println("num= "+num);
							JOptionPane.showMessageDialog(null, "恭喜！你赢了！", "游戏结束", JOptionPane.INFORMATION_MESSAGE);
							this.dispose();//删除窗口
							new Login();//重新加载
						}
						num++;
						mainPanel.remove(setNumber);//删除关卡显示，重新画
						paintNumber(num);
						wormNumber=0;
					}
					flag = true;

					mainPanel.remove(worm);//删除被吃掉的虫子

					JLabel w = new JLabel("");
					w.setOpaque(true);
					w.setBackground(c);//浅橙色
					w.setBounds(wormX, wormY, PubStaticVar.STEP, PubStaticVar.STEP);

					mainPanel.add(w);
					mainPanel.updateUI();
					snakeList.add(1, w);

					setRandomWorm();//刷新新的虫子
				}
				
				
				//判断吃没吃到自己
				for (int i = 2; i < snakeList.size(); i++) {
					JLabel jl = snakeList.get(i);
					if(jl.getX()==x&&jl.getY()==y){
						isDie = true;
						JOptionPane.showMessageDialog(null, "你啃到了自己！", "游戏结束", JOptionPane.INFORMATION_MESSAGE);
						//信息弹窗
					}
				}

			} else {
				isDie = true;
				JOptionPane.showMessageDialog(null, "die！", "游戏结束", JOptionPane.INFORMATION_MESSAGE);
			}
		} else {
			isDie = true;
			JOptionPane.showMessageDialog(null, "die！", "游戏结束", JOptionPane.INFORMATION_MESSAGE);
		}

	}

	//keyListener的接口
	@Override
	public void keyTyped(KeyEvent e) {//字符输入

	}

	@Override
	public void keyReleased(KeyEvent e) {//释放按键

	}

	@Override
	public void actionPerformed(ActionEvent e) {

		switch (e.getActionCommand()) {
		case "GoGoGo":
			setRandomWorm();//刷新虫子
			moveAuto();//按键操作

			xuyang.setEnabled(false);

			setKeyFoucs();
			break;

		case "再来一遍":
			this.dispose();//删除窗口
			new Login();//重新加载
			break;
		}

	}

}
