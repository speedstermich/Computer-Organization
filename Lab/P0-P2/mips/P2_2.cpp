#include <stdio.h>
int tempMatrix[8][8];
int resultMatrix[8][8];
int m,n;
void sqrtTempMatrix()
{
	int i,j,k;
	for(i=0;i<m;i++)
	  for(j=0;j<m;j++)
	  {
	  	resultMatrix[i][j]=0;
	  	for(k=0;k<m;k++)
	  	   resultMatrix[i][j]+=tempMatrix[i][k]*tempMatrix[k][j];
	  }
}
void replaceTempMatrix()
{
	int i,j;
	for (i=0;i<m;i++) {
		for (j=0;j<m;j++) {
			tempMatrix[i][j]=resultMatrix[i][j];
		}
	}
}
void powerTempMatrix()
{
     int i;
	 for(i=0;i<n;i++) {
	 	sqrtTempMatrix();
	 	replaceTempMatrix();
	 }	
}
int main()
{
	int i,j;
	scanf("%d",&n);
	scanf("%d",&m);
	for(i=0;i<m;i++)
	   for(j=0;j<m;j++)
	     scanf("%d",&(tempMatrix[i][j]));
	   powerTempMatrix();
	   for(i=0;i<m;i++)
	   {
	   	for(j=0;j<m;j++)
	   	   printf("%d ",tempMatrix[i][j]);
	   	   printf("\n");
	   }
}
