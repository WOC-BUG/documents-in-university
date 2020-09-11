//#pragma warning (disable:4996)
//#include<iostream>
//#include<cstdio>
//#include<cmath>
//#include<algorithm>
//#include<math.h>
//#include<cstring>
//#include<string>
//#include<queue>
//#include<vector>
//#include<map>
//using namespace std;
//typedef long long ll;
//map<string, double> mp;
//int t;
//int main()
//{
//	mp["H"] = 1.008;
//	mp["He"] = 4.003;
//	mp["Li"] = 6.941;
//	mp["Be"] = 9.012;
//	mp["B"] = 10.81;
//	mp["C"] = 12.01;
//	mp["N"] = 14.01;
//	mp["O"] = 16.00;
//	mp["F"] = 19.00;
//	mp["Ne"] = 20.18;
//	mp["Na"] = 22.99;
//	mp["Mg"] = 24.31;
//	mp["Al"] = 26.98;
//	mp["Si"] = 28.09;
//	mp["P"] = 30.97;
//	mp["S"] = 32.07;
//	mp["Cl"] = 35.45;
//	mp["Ar"] = 39.95;
//	mp["K"] = 39.10;
//	mp["Ca"] = 40.08;
//	mp["Sc"] = 44.96;
//	mp["Ti"] = 47.88;
//	mp["V"] = 50.94;
//	mp["Cr"] = 52.00;
//	mp["Mn"] = 54.94;
//	mp["Fe"] = 55.85;
//	mp["Co"] = 58.93;
//	mp["Ni"] = 58.69;
//	mp["Cu"] = 63.55;
//	mp["Zn"] = 65.39;
//	mp["Ga"] = 69.72;
//	mp["Ge"] = 72.59;
//	mp["As"] = 74.92;
//	mp["Se"] = 78.96;
//	mp["Br"] = 79.90;
//	mp["Kr"] = 83.80;
//	mp["Rb"] = 85.47;
//	mp["Sr"] = 87.62;
//	mp["Y"] = 88.91;
//	mp["Zr"] = 91.22;
//	mp["Nb"] = 92.91;
//	mp["Mo"] = 95.94;
//	mp["Tc"] = 97.91;
//	mp["Ru"] = 101.1;
//	mp["Rh"] = 102.9;
//	mp["Pd"] = 106.4;
//	mp["Ag"] = 107.9;
//	mp["Cd"] = 112.4;
//	mp["In"] = 114.8;
//	mp["Sn"] = 118.7;
//	mp["Sb"] = 121.8;
//	mp["Te"] = 127.6;
//	mp["I"] = 126.9;
//	mp["Xe"] = 131.3;
//	mp["Cs"] = 132.9;
//	mp["Ba"] = 137.3;
//	mp["La"] = 138.9;
//	mp["Ce"] = 140.1;
//	mp["Pr"] = 140.9;
//	mp["Nd"] = 144.2;
//	mp["Pm"] = 144.9;
//	mp["Sm"] = 150.4;
//	mp["Eu"] = 152.0;
//	mp["Gd"] = 157.3;
//	mp["Tb"] = 158.9;
//	mp["Dy"] = 162.5;
//	mp["Ho"] = 164.9;
//	mp["Er"] = 167.3;
//	mp["Tm"] = 168.9;
//	mp["Yb"] = 173.0;
//	mp["Lu"] = 175.0;
//	mp["Hf"] = 178.5;
//	mp["Ta"] = 180.9;
//	mp["W"] = 183.9;
//	mp["Re"] = 186.2;
//	mp["Os"] = 190.2;
//	mp["Ir"] = 192.2;
//	mp["Pt"] = 195.1;
//	mp["Au"] = 197.0;
//	mp["Hg"] = 200.6;
//	mp["Tl"] = 204.4;
//	mp["Pb"] = 207.2;
//	mp["Bi"] = 209.0;
//	mp["Po"] = 209.0;
//	mp["At"] = 210.0;
//	mp["Rn"] = 222.0;
//	mp["Fr"] = 223.0;
//	mp["Ra"] = 226.0;
//	mp["Ac"] = 227.0;
//	mp["Th"] = 232.0;
//	mp["Pa"] = 231.0;
//	mp["U"] = 238.0;
//	mp["Np"] = 237.1;
//	mp["Pu"] = 244.1;
//	mp["Am"] = 243.1;
//	mp["Cm"] = 247.1;
//	mp["Bk"] = 247.1;
//	mp["Cf"] = 252.1;
//	mp["Es"] = 252.1;
//	mp["Fm"] = 257.1;
//	mp["Md"] = 258.1;
//	mp["No"] = 259.1;
//	mp["Lr"] = 262.1;
//	mp["Rf"] = 265.1;
//	mp["Db"] = 268.1;
//	mp["Sg"] = 271.1;
//	mp["Bh"] = 270.1;
//	mp["Hs"] = 277.2;
//	mp["Mt"] = 276.2;
//	mp["Ds"] = 281.2;
//	mp["Rg"] = 280.2;
//	mp["Cn"] = 285.2;
//	mp["Nh"] = 284.2;
//	mp["Fl"] = 289.2;
//	mp["Mc"] = 288.2;
//	mp["Lv"] = 293.2;
//	mp["Ts"] = 294.2;
//	mp["Og"] = 294.2;
//	scanf("%d", &t);
//	string str,tmp;
//	while (t--)
//	{
//		double ans = 0;
//		tmp = "";
//		cin >> str;
//		int len = str.length();
//		int num = 0;
//		for (int i = 0; i < len; i++)
//		{
//			if(str[i] - '0' >= 0 && str[i] - '0' <= 9)
//			{
//				num *= 10;
//				num += str[i] - '0';
//			}
//			else
//			{
//				if (tmp != "")
//				{
//					if (num == 0)
//						num = 1;
//					ans += num * mp[tmp];
//				}
//				num = 0;
//				tmp = "";
//				tmp += str[i];
//				if (str[i + 1] - 'a' >= 0 && str[i + 1] - 'a' < 26)
//					tmp += str[++i];
//			}
//		}
//		if (tmp != "")
//		{
//			if (num == 0)
//				num = 1;
//			ans += num * mp[tmp];
//		}
//		printf("%.3lf\n", ans);
//	}
//	return 0;
//}