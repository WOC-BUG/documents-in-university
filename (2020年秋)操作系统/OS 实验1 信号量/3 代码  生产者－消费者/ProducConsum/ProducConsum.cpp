// ProducConsum.cpp : Defines the entry point for the console application.
//
#include "stdafx.h"


#include "windows.h"
#include <conio.h>
#include <stdlib.h>
#include <fstream>
#include <io.h>
#include <string.h>
#include <stdio.h>
using namespace std;

#define INTE_PER_SEC 100 
#define MAX_THREAD_NUM  64
#define SEM_MAX_FULL    64
#define PRODUC 'P'
#define CONSUM 'C'



struct ThreadInfo
{
	int    serial;
	char   entity;
	double delay;
	double persist;
};


int  buff_num;


CRITICAL_SECTION sem_mutex; 

HANDLE sem_full; 
HANDLE sem_avail;


 
void  ProducConsum(char *file);
void  Thread_Producter(void *p);
void  Thread_Consumer(void *p);
 

int main(int argc, char* argv[])
{
	ProducConsum("..//pc_data.txt");
    

	return 0;
}

///////////////////////////////////////////
void ProducConsum(char *file)
{
	DWORD n_thread = 0;  
	DWORD thread_ID ;	 
 
	HANDLE		h_Thread[MAX_THREAD_NUM];
	ThreadInfo  thread_info[MAX_THREAD_NUM];

 
	ifstream inFile;
	inFile.open(file);
	puts("Read Data File \n");

	inFile >> buff_num;
	while(inFile)
	{
		inFile >>  thread_info[n_thread].serial;
		inFile >>  thread_info[n_thread].entity;
		inFile >>  thread_info[n_thread].delay;
		inFile >>  thread_info[n_thread].persist;
		n_thread++;
		inFile.get();
	}


	for(int i=0;i<(int)(n_thread);i++)
	{
		if(thread_info[i].entity == PRODUC)
		 
			h_Thread[i] = CreateThread(NULL,0,(LPTHREAD_START_ROUTINE)( Thread_Producter),
			&thread_info[i],0,&thread_ID);
		else
		{
			if(thread_info[i].entity == CONSUM)
		 
			h_Thread[i] = CreateThread(NULL,0,(LPTHREAD_START_ROUTINE)( Thread_Consumer),
			&thread_info[i],0,&thread_ID);

			else
			{
				puts("Bad File\n");
				exit(0);
			}

		}
	}

    printf("Buff  %d\n",buff_num);

 	InitializeCriticalSection(&sem_mutex);
 	sem_full  = CreateSemaphore(NULL,0       ,SEM_MAX_FULL,"sem_full");
 	sem_avail = CreateSemaphore(NULL,buff_num,SEM_MAX_FULL,"sem_avail");
	
  	WaitForMultipleObjects(n_thread,h_Thread,TRUE,-1);

	printf("Task is Finished!\n");
	getch();
}


///////////////////////////////////////////

 
void  Thread_Producter(void *p)
{

	DWORD m_delay;			 
	DWORD m_persist;		 
	int		m_serial;	 

	//¶Á²ÎÊý
	m_serial = ((ThreadInfo*)(p))->serial;
	m_delay  = (DWORD)(((ThreadInfo*)(p))->delay*INTE_PER_SEC);
	m_persist  = (DWORD)(((ThreadInfo*)(p))->persist*INTE_PER_SEC);

 	Sleep(m_delay);
 	printf("P thread %d send the P require\n",m_serial);
 	WaitForSingleObject(sem_avail,INFINITE); 
	EnterCriticalSection(&sem_mutex);
 	printf("P thread %d Begin to P\n",m_serial);
	Sleep(m_persist);
	printf("P thread %d Finish P.\n",m_serial);
 	ReleaseSemaphore(sem_full,1,NULL); 
 	LeaveCriticalSection(&sem_mutex);
	
}


///////////////////////////////////////////
 
void  Thread_Consumer(void *p)
{

	DWORD	m_delay;		 
	DWORD	m_persist;		 
	int		m_serial;		 
 
	m_serial = ((ThreadInfo*)(p))->serial;
	m_delay  = (DWORD)(((ThreadInfo*)(p))->delay*INTE_PER_SEC);
	m_persist  = (DWORD)(((ThreadInfo*)(p))->persist*INTE_PER_SEC);

 
 	Sleep(m_delay);
 	printf("C thread %d send the P require\n",m_serial);
 	WaitForSingleObject(sem_full,INFINITE); 
	EnterCriticalSection(&sem_mutex);
 	printf("C thread %d Begin to C\n",m_serial);
	Sleep(m_persist);
	printf("C thread %d Finish C.\n",m_serial);
 	ReleaseSemaphore(sem_avail,1,NULL); 
 	LeaveCriticalSection(&sem_mutex);
	 
}




