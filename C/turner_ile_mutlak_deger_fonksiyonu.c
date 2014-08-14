#include<stdio.h>

int abs_i(int);
float abs_f(float);

int main(void) {
    int a;
    float b;
    
    printf("mutlak degerini ogrenmek istediginiz tam sayiyi giriniz:\n");
    scanf("%d",&a);
    printf("Mutlak deger %d 'dir.\n\n", abs_i(a));
    
    printf("mutlak degerini ogranmak istediginiz ondalik sayiyi giriniz:\n");
    scanf("%f",&b);
    printf("Mutlak deger %f 'dir.\n", abs_f(b));
    
    getch();
    return 0;
}

int abs_i(int a){
    return a<0  ? (a*-1)  : a;
}
float abs_f(float b){
    return b<0  ? (b*-1) : b;
    
}
