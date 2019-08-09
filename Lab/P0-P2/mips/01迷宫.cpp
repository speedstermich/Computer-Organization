	#include <stdio.h>
int a[7][7]={0},judge[7][7]={0},total;
int line1,con1,line2,con2;
int n,m;
void search(int line,int con){
	judge[line][con]=1;
	if(line==line2&&con==con2){
	judge[line][con]=0;
	  total++;
	  return;
	 }
	int i;
	i=line-1;
	if(i>=0&&judge[i][con]==0&&a[i][con]==0)
		 search(i,con);
	
	i=line+1;
	if(i<n&&judge[i][con]==0&&a[i][con]==0)
		 search(i,con);
	
	i=con-1;
	if(i>=0&&judge[line][i]==0&&a[line][i]==0)
		 search(line,i);
	
	i=con+1;
	if(i<m&&judge[line][i]==0&&a[line][i]==0)
		 search(line,i);
		 
	
}

int main(){
	scanf("%d %d",&n,&m);
	int i,j,num;
	for(i=0;i<n;i++){
		for(j=0;j<m;j++){
			scanf("%d",&num);
			a[i][j]=num;
		}
	}
	scanf("%d%d%d%d",&line1,&con1,&line2,&con2);
	line1--;
	con1--;
	line2--;
	con2--;
	search(line1,con1);
	printf("%d",total);
	return 0;
}
