//#include<stdio.h>
//#include<stdarg.h>
//#include <malloc.h>
//#include <stdlib.h> //exit(),atoi()
//#define MAX_ARRAY_DIM 8//����ά�������ֵ
//#define OVERFLOW 2//�ڴ��������ֵ
//#define UNDERFLOW 3//�ڴ��������ֵ
//typedef int ElemType;
//typedef int Status;
//
//typedef struct {
//	ElemType* base;//����Ԫ�ػ�ַ���������׵�ַ
//	int dim;//����ά��
//	int* bounds;//����ά���ַ
//	//ָ��һ��һά���飬���ÿһάԪ�ص�����
//	int* constants;//����ӳ����������ַ
//	//������A����ά���ϵ����ּ�һʱ, Ԫ�������ԽṹL�����ƶ��ľ���
//	//constants[i] = constans[i+1]  *  bounds[i+1]
//}Array;
//
// //��ά��dim�͸�ά���ȺϷ���������Ӧ������A��������OK
//Status InitArray(Array& A, int dim, ...)
//{
//	if (dim < 1 || dim>MAX_ARRAY_DIM)
//		return 0;
//	A.dim = dim;
//	A.bounds = (int*)malloc(dim * sizeof(int));//��ÿһά���ٿռ�
//	if (!A.bounds)//�ռ����ʧ��
//		exit(OVERFLOW);
//	int elemtotal = 1;
//	va_list ap;//��ű䳤��������Ϣ������
//	//va_list ��һ���ַ�ָ�룬�������Ϊָ��ǰ������һ��ָ�룬ȡ�α���ͨ�����ָ����С�
//	va_start(ap, dim);
//	for (int i = 0; i < dim; ++i)
//	{
//		A.bounds[i] = va_arg(ap, int);//��ȡ��ǰ������ָ�������ƶ�
//		if (A.bounds[i] < 0)
//			return UNDERFLOW;
//		elemtotal *= A.bounds[i];//ÿһά��Ԫ�ظ�����˼�Ϊ��Ԫ�ظ���
//	}
//	va_end(ap);//��տɱ��б�
//	A.base = (ElemType*)malloc(elemtotal * sizeof(ElemType));
//	if (!A.base)
//		exit(OVERFLOW);
//	//��ӡ������ci��������A.constants[i-1]
//	A.constants = (int*)malloc(dim * sizeof(int));
//	if (!A.constants)
//		exit(OVERFLOW);
//	A.constants[dim - 1] = 1;
//	for (int i = dim - 2; i >= 0; --i)
//		A.constants[i] = A.bounds[i + 1] * A.constants[i + 1];
//	return 1;
//}
//
////��������A
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
////��apָʾ�ĸ��±�ֵ�Ϸ����������Ԫ����A�е���Ե�ַoff
//Status Locate(Array A, va_list ap, int& off)// Value()��Assign()���ô˺���
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
////����Ϊ��ά���±�ֵ�������±�Ϸ�����e����ֵΪA����Ӧ��Ԫ��ֵ
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
////����Ϊ��ά���±�ֵ�������±�Ϸ�����e��ֵ����A��ָ����Ԫ��
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
//	InitArray(A, dim, bound[0], bound[1], bound[2]);//������ά����A[2][3][4]
//	p = A.bounds;
//	printf("�����%dά���飬ÿһά�Ĵ�СΪ��\n", dim);
//	for (int i = 0; i < dim; i++)
//		printf("%d%c", *(p + i), i == (dim - 1) ? '\n' : ' ');
//
//	p = A.constants;
//	printf("�����%dά���飬ÿһά�Ļ�ַΪ��\n", dim);
//	for(int i=0;i<dim;i++)
//		printf("%d%c", *(p + i), i == (dim - 1) ? '\n' : ' ');
//	p1 = A.base;
//	printf("\n%d��%d��%d�߾���Ԫ������:\n", bound[0], bound[1], bound[2]);
//	for (int i = 0; i < bound[0]; i++)
//	{
//		for (int j = 0; j < bound[1]; j++)
//		{
//			for (int k = 0; k < bound[2]; k++)
//			{
//				Assign(&A, i * 100 + j * 10 + k, i, j, k);//��ijk��ֵ��A[i][j][k]
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
