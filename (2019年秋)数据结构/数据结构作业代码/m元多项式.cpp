//#include<stdio.h>
//#include<stdarg.h>
//#include <malloc.h>
//#include <stdlib.h> //exit(),atoi()
//#define MAX_ARRAY_DIM 8//数组维数的最大值
//#define OVERFLOW 2//内存溢出返回值
//#define UNDERFLOW 3//内存溢出返回值
//typedef int ElemType;
//typedef int Status;
//
//typedef struct {
//	ElemType* base;//数组元素基址，即数组首地址
//	int dim;//数组维数
//	int* bounds;//数组维界基址
//	//指向一个一维数组，存放每一维元素的数量
//	int* constants;//数组映像函数常量基址
//	//即数组A各个维度上的数字加一时, 元素在线性结构L上所移动的距离
//	//constants[i] = constans[i+1]  *  bounds[i+1]
//}Array;
//
// //若维数dim和各维长度合法，则构造相应的数组A，并返回OK
//Status InitArray(Array& A, int dim, ...)
//{
//	if (dim < 1 || dim>MAX_ARRAY_DIM)
//		return 0;
//	A.dim = dim;
//	A.bounds = (int*)malloc(dim * sizeof(int));//给每一维开辟空间
//	if (!A.bounds)//空间分配失败
//		exit(OVERFLOW);
//	int elemtotal = 1;
//	va_list ap;//存放变长参数表信息的数组
//	//va_list 是一个字符指针，可以理解为指向当前参数的一个指针，取参必须通过这个指针进行。
//	va_start(ap, dim);
//	for (int i = 0; i < dim; ++i)
//	{
//		A.bounds[i] = va_arg(ap, int);//获取当前参数，指针往下移动
//		if (A.bounds[i] < 0)
//			return UNDERFLOW;
//		elemtotal *= A.bounds[i];//每一维的元素个数相乘即为总元素个数
//	}
//	va_end(ap);//清空可变列表
//	A.base = (ElemType*)malloc(elemtotal * sizeof(ElemType));
//	if (!A.base)
//		exit(OVERFLOW);
//	//求印象函数的ci，并存入A.constants[i-1]
//	A.constants = (int*)malloc(dim * sizeof(int));
//	if (!A.constants)
//		exit(OVERFLOW);
//	A.constants[dim - 1] = 1;
//	for (int i = dim - 2; i >= 0; --i)
//		A.constants[i] = A.bounds[i + 1] * A.constants[i + 1];
//	return 1;
//}
//
////销毁数组A
//Status DestoryArray(Array* A)
//{
//	if (!A->base) return 0;
//	free(A->base); A->base = NULL;
//	if (!A->bounds) return 0;
//	free(A->bounds); A->bounds = NULL;
//	if (!A->constants) return 0;
//	free(A->constants); A->constants = NULL;
//	return 1;
//}
//
////若ap指示的各下标值合法，则求出该元素在A中的相对地址off
//Status Locate(Array A, va_list ap, int& off)// Value()、Assign()调用此函数
//{
//	off = 0;
//	int ind;
//	for (int i = 0; i < A.dim; i++)
//	{
//		ind = va_arg(ap, int);
//		if (ind < 0 || ind >= A.bounds[i])
//			return OVERFLOW;
//		off += A.constants[i] * ind;
//		//printf("ind = %d , A.constants[%d]=%d, off = %d\n",ind,i,A.constants[i],off);
//	}
//	return 1;
//}
//
////依次为各维的下标值，若各下标合法，则e被赋值为A的相应的元素值
//Status Value(Array A, ElemType* e, ...)
//{
//	Status result;
//	int off;
//	va_list ap;
//	va_start(ap, e);
//	if ((result = Locate(A, ap, off)) <= 0)
//		return result;
//	*e = *(A.base + off);
//	return 1;
//}
//
////依次为各维的下标值，若各下标合法，则将e的值赋给A的指定的元素
//Status Assign(Array* A, ElemType e, ...)
//{
//	Status result;
//	int off;
//	va_list ap;
//	va_start(ap, e);
//	if ((result = Locate(*A, ap, off)) <= 0)
//		return result;
//	*((*A).base + off) = e;
//	return 1;
//}
//
//int main()
//{
//	char ch[10];
//	Array A;
//	int dim = 3, bound[105] = { 3,4,2 }, *p;
//	ElemType e, *p1;
//	InitArray(A, dim, bound[0], bound[1], bound[2]);//构造三维数组A[2][3][4]
//	p = A.bounds;
//	printf("构造的%d维数组，每一维的大小为：\n", dim);
//	for (int i = 0; i < dim; i++)
//		printf("%d%c", *(p + i), i == (dim - 1) ? '\n' : ' ');
//
//	p = A.constants;
//	printf("构造的%d维数组，每一维的基址为：\n", dim);
//	for(int i=0;i<dim;i++)
//		printf("%d%c", *(p + i), i == (dim - 1) ? '\n' : ' ');
//	p1 = A.base;
//	printf("\n%d行%d列%d高矩阵元素如下:\n", bound[0], bound[1], bound[2]);
//	for (int i = 0; i < bound[0]; i++)
//	{
//		for (int j = 0; j < bound[1]; j++)
//		{
//			for (int k = 0; k < bound[2]; k++)
//			{
//				Assign(&A, i * 100 + j * 10 + k, i, j, k);//将ijk赋值给A[i][j][k]
//				Value(A, &e, i, j, k);
//				printf("A[%d][%d][%d]=%d ", i, j, k, e);
//				if (i == 0 && j == 0 && k == 0)
//					p1 = A.base;
//				//printf("A.base=%d ", *A.base);
//			}
//			printf("\n");
//		}
//		printf("\n");
//	}
//	printf("A.base=\n");
//	for (int i = 0; i < bound[0] * bound[1] * bound[2]; i++)
//	{
//		printf("%4d", *(p1 + i));
//		if ((i % (bound[1] * bound[2])) == (bound[1] * bound[2] - 1))
//			printf("\n");
//	}
//	DestoryArray(&A);
//	return 0;
//}
