#include <stdio.h>
#include <stdlib.h>
 #define m 4
 #define n 4
int main()
{
    //int x[m]={0,3,5,-9,2,1,7,6,13,8,5}; // m=11
    //int h[n]={0,2,7,5,4};   // n=5

    //int x[m]={0,2,1,3,5}; // m=5
    //int h[n]={0,4,9,6,1,7,3,-2,0,1};   // n=10


    int x[m]={0,3,2,1}; //m=4
    int h[n]={0,8,4,2}; //n=4

    int tersh[n];
    int y[m-1+n-1-1];
    int k;
    int j;
    int i;
    int top=0;
    int b;
      for(i=0;i<n;i++){
        tersh[i+1]=h[(n-1)-i];
      }

    for (k=1;k<=(m-1)+(n-1)-1;k++){
            if(k<=m-1){
                j=n-1;
                i=k;
            }else{
            j--;
            i=m-1;
            }
           top=0;
           b=j;
           while(i>0 && j>0){
            top=top+(x[i]*tersh[j]);
            i--;
            j--;
           }
           y[k]=top;
           j=b;
    }


    for(k=1;k<=(m-1)+(n-1)-1;k++){
        printf("%d ",y[k]);
    }
    return 0;
}
