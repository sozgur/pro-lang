#include<stdio.h>

int toupper(int);

int main(void){
    int c;
    printf("Tum harflerini buyutmek istedigin cumleyi yaz:");
    scanf("%d",c);
    printf("%c",toupper(c));
    
    getch();
    return 0;
}

int toupper(int c){
    while(c!=EOF){
     c=getchar();
     if(c>='a' && c<='z'){
        c=c-32;
        putchar(c);}
     else
        putchar(c);
}
} 
