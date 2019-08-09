#include <stdio.h>
int fib(int n)
{
	 int i;
	 int a=0,b=1,result;
	if(n==0)
	   printf("0");
	else if(n==1)
	  printf("1");
	else{
		for(i=2;i<=n;i++)
		{
			result=a+b;
			a=b;
			b=result;
		}
		printf("%d",result);
	}
	   
}
int main()
{
	int n;
	scanf("%d",&n);
	fib(n);
	return 0;
}

