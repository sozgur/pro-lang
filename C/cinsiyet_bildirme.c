#include<stdio.h>
#include<string.h>

enum mantiksal{bay,bayan};
int main(void){
    char c;
    enum mantiksal durum = bay;
    
     printf("Lutfen cinsiyetinizin bas harfini Erkek ise \"E\" Bayan ise \"B\" yaziniz:");
             scanf("%c", &c);
   
    switch(durum){
        case bay:
             if(c=='E' || c=='e'){
                 printf("cinsiyetiniz Erkek\n");}
             else
                 durum = bayan;
                 goto etiket1;
                 break;
          etiket1:
        case bayan:
          if(c=='B' || c=='b'){
                 printf("cinsiyetiniz Bayan\n");}
                 break;
                }
                 
getch();          
return 0;

}
             
             
