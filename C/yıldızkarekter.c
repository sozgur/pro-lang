/* kelime içinde \n varsa yeirne yýldýz koyar*/
#include<stdio.h>
#include<string.h>
int main(void) {
    char c[40];
    int i;
    
    printf("Bir kelime girin:\n");
    scanf("%s",c);
    
    for(i=0; i<strlen(c); i++){
        if(c[i]==92 &&  c[i+1]==110)
            putchar(c[i+1]='*');
        else 
            putchar(c[i]);
}     
      getch();
return 0;
}    
