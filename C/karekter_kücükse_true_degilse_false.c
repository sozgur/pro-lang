#include<stdio.h>
#include<ctype.h>

enum mantiksal{True,False};
int main(void){
    int c;
    enum mantiksal durum = True;
    for( ; ;) {
         c=getchar();
         if(c==EOF) break;
         
         switch(durum) {
             case True:
                if(islower(c)){
                     printf("True\n");}
                else
                     durum = False; 
                     break; 
             case False:
                 if(!islower(c)){ 
                     printf("False\n");}
                     durum = True;
                   break;   
                      }
  }
 return 0;
}             
                    
    
