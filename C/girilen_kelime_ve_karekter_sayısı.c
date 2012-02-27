#include<stdio.h>
#include<string.h>

int main(void) {
    char c[10];
    int k=0,m=0;
    gets(c); /* kalvyeden grilen karekter dizilerini oku */
    while(c[k]!='\0'){ /* sonlandýrýcý karektere kadar karekterleri say*/
             k++;  
             if (c[k] == 32) 
                   m++;  
                   }    
           printf("kelime sayýsý: %d", (m+1)); /* boþluk sayýsýndan bir fazlasýný yaz */
           printf("karekter sayýsý: %d", (k));
        getch();

}
