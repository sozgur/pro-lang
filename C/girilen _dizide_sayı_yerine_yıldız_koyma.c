#include<stdio.h>
#include<ctype.h>

int main(void) {
    int c;
    for(; ;){
          c=getchar();
          if(isalnum(c)!=0 && isdigit(c)!=0){
              c='*';
              }
    putchar(c);
    }   
         
    getch();
}
