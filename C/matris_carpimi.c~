#include <stdio.h>
#include <stdlib.h>
                           
int main() 
{
    int **matris; // 1.matris tanimlandi
    int **matris2; // 2. matris ttanimlandi
    int **matrisc; // carpim matrisi tanimlandi
    int satir, kolon, satir2, kolon2;
    int s, k, c, toplam;
    int i;
    
    printf("NOT:iki matrisin carpilmasi icin birinci matrisin kolon sayisi ile ikinci matrisin\
 satir sayisi esit olmak zorunda lufen bunu goz onunde bulundurarak carpma\
 isleminizi yapiniz.\n\n");
 
    printf("1. Matrisin satir sayisi: ");
    scanf("%d", &satir); // 1. matris için kullanicidan satir sayisi isteniyor

    printf("1. Matrisin kolon sayisi: ");
    scanf("%d", &kolon); // 1. matris için kulanicidan sutun sayisi isteniyor

    /* distaki dizi için bellek alani isteniyor  */
    matris = (int **) calloc(satir, sizeof(int));

    /* içteki dizi için bellek alani isteniyor */
    for(i = 0; i < satir; i++)
	matris[i] = (int *) calloc(kolon, sizeof(int));

    /* matrisin elemanlari okunuyor */
    for(s = 0; s < satir; s++)
	for(k = 0; k < kolon; k++) {
	    printf("Matrisin elemani girin: matris[%d][%d] = ", s, k); //kullanici 1. matirisin elemnlarini tek tek giriyor.
	    scanf("%d", &(matris[s][k]));
        }

    printf("\nGirilen matris:\n");
    
    /* 1. matiris ekrana basiliyor */
    for(s = 0; s < satir; s++) {
	for(k = 0; k < kolon; k++)
	    printf("%4d", matris[s][k]);

        printf("\n\n");
    }
    
    
     printf("2. Matrisin satir sayisi: ");// 2. matris için kullanicidan satir sayisi isteniyor
    scanf("%d", &satir2);

    printf("2. Matrisin kolon sayisi: "); //2. matris için kulanicidan sutun sayisi isteniyor
    scanf("%d", &kolon2);

    /* distaki dizi için bellek alani isteniyor  */
    matris2 = (int **) calloc(satir2, sizeof(int));

    /* içteki dizi için bellek alani isteniyor */
    for(i = 0; i < satir2; i++)
	matris2[i] = (int *) calloc(kolon2, sizeof(int));

    /* matrisin elemanlari okunuyor */
    for(s = 0; s < satir2; s++)
	for(k = 0; k < kolon2; k++) {
	    printf("Matrisin elemani girin: matris[%d][%d] = ", s, k); //kullanici 2. matirisin elemnlarini tek tek giriyor.
	    scanf("%d", &(matris2[s][k]));
        }

    printf("\nGirilen matris:\n");
    
    /* 2. matiris ekrana basiliyor */
    for(s = 0; s < satir2; s++) {
	for(k = 0; k < kolon2; k++)
	    printf("%4d", matris2[s][k]);

        printf("\n");
    }

    printf("\nCarpim matirisi:\n");
    
    /* distaki dizi için bellek alani isteniyor  */
    matrisc = (int **) calloc(satir, sizeof(int));

    /* içteki dizi için bellek alani isteniyor */
    for(i = 0; i < satir; i++)
	matrisc[i] = (int *) calloc(kolon2, sizeof(int));
    
    /*1. matirisin satir sayisi 2. matrisin sutun sayisi boyutunda çarpim matirisi olusuyor
    bellekteki alanlarimiz da ona göre ayrildi*/
    for(s=0; s<satir; s++){
       for(k=0; k<kolon2; k++){
      
          for(toplam=0, c=0; c<satir2; c++)
             toplam += matris[s][c]*matris2[c][k];

          matrisc[s][k] = toplam;
          printf("%4d",matrisc[s][k]);
       }
       printf("\n");
    }
    
    getch();
    return(0);
    
}

