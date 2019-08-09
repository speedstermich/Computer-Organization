#include <stdio.h>
void H(int n,char front,char mid,char end)
{
	if(n==1){
	
	   printf("%c to %c\n",front,end);
	   return;
}
	else{
		H(n-1,front,end,mid);
		printf("%c to %c\n",front,end);
		H(n-1,mid,front,end);
		return;
	}
}

int main()
{
	int n;
	scanf("%d",&n);
	H(n,'A','B','C');
	return 0;
	
}
