#include <stdio.h>
int judge=0;
int find(int a[9][9],int b[9],int d1,int use,int n)
{
	if(use==n&&d1==1){
		judge=1;
		return 0;
	}
	int d2;
	for(d2=1;d2<n+1;d2++){
		if(a[d1][d2]!=0&&b[d2]==1){
			b[d2]=0;
			a[d1][d2]--;
			a[d2][d1]--;
			find(a,b,d2,use+1,n);
		  a[d1][d2]++;
		  a[d2][d1]++;
		  b[d2]=1;
	    }
	}
}
int main()
{
	int n,m,use;
	scanf("%d",&n);
	scanf("%d",&m);
	int i,j;
	int a[9][9],d1,d2,b[9];//aÊÇ±ß 
	for(i=0;i<9;i++){
		for(j=0;j<9;j++){
			a[i][j]=0;
		}
		b[i]=1; 
	}
	for(i=1;i<=m;i++){
		scanf("%d",&d1);
		scanf("%d",&d2);
		a[d1][d2]++;
		a[d2][d1]++;
	}
	find(a,b,1,0,n);
	if(judge==1)
	 printf("1");
	else
	 printf("0");
}

