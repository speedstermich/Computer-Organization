#include <stdio.h>
int main()
{
	int n,p,q;
	scanf("%d",&n);
	scanf("%d",&p);
	scanf("%d",&q);
	char skr[n],skr1[p],skr2[q];
	int i,j,k;
	char c;
	for(i=0;i<n;i++){
		scanf(" %c",&c);
		skr[i]=c;
	} 
	for(i=0;i<p;i++){
		scanf(" %c",&c);
		skr1[i]=c;
	}
	for(i=0;i<q;i++){
		scanf(" %c",&c);
		skr2[i]=c;
	}
	int num=1;
if(p==0){
	for(i=0;i<n;i++)
		printf("%c",skr[i]);
	}
else{
	for(i=0;i<n;i++){
		if(skr[i]==skr1[0]){
			for(j=1;j<p;j++){
				if(i+j<n&&skr[i+j]==skr1[j]){
				  num++;}
			}
			if(num==p){
				for(k=0;k<q;k++){
					printf("%c",skr2[k]);
				}
				i=i+p;
				i--;
			}
			else if(num<p){
			printf("%c",skr[i]);
			}
		}
		else{
			printf("%c",skr[i]);
		}
		num=1;
	}
}
	return 0;
 } 
