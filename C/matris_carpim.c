#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <pthread.h>  

pthread_mutex_t condition_mutex = PTHREAD_MUTEX_INITIALIZER;
pthread_cond_t  condition_cond  = PTHREAD_COND_INITIALIZER;

pthread_mutex_t creating_theads_mutex = PTHREAD_MUTEX_INITIALIZER;
int creating_theads = 0;
 
static int **matris;
static int **matris2;
static int **matrisc;  
static int satir, kolon, satir2, kolon2;
static int s, k, c, toplam;
static int i;  

 
static void init() {  
	
	printf("Thread #%d init.\n",satirno+1);
    fflush(stdout);


    if(creating_theads > 0) {
        printf("Thread #%d digerlerinin yaratilmasini beklemek uzere kitlenecek.\n",satirno+1);
        fflush(stdout);
        
        pthread_mutex_lock( &condition_mutex );
        printf("Thread #%d mutex locked.\n",satirno+1);
        fflush(stdout);
        pthread_cond_wait( &condition_cond, &condition_mutex );
        printf("Thread #%d cond wait ended.\n",satirno+1);
        fflush(stdout);
        pthread_mutex_unlock( &condition_mutex );

        printf("Thread #%d calismaya devam ediyor.\n",satirno+1);
        fflush(stdout);
    } else {
        pthread_mutex_unlock(&creating_theads_mutex);
        printf("Thread #%d beklemeye fırsat bulamadı.\n",satirno+1);
        fflush(stdout);
    }

    printf("Thread #%d hesaplamaya basladi.\n",satirno+1);
    int ic1,ic2;
    for(ic1=0; ic1<k; ic1++) {
        for(ic2=0; ic2<c; ic2++)  {
            matrisc[(satirno*k) + ic1] += matris[(satirno*c) + ic2] * matris2[(ic2*k)+ic1];
        }
    }
    printf("Thread #%d hesaplamayi bitirdi ve sonlandi.\n",satirno+1);
 }
 
           
int main(void) 
{
	 printf("NOT:iki matrisin carpilmasi icin birinci matrisin kolon sayisi ile ikinci matrisin\
 satir sayisi esit olmak zorunda lufen bunu goz onunde bulundurarak carpma\
 isleminizi yapiniz.\n\n");
 
		printf("1. Matrisin satir sayisi: ");
    scanf("%d", &satir); 

    printf("1. Matrisin kolon sayisi: ");
    scanf("%d", &kolon); 

    
    matris = (int **) calloc(satir, sizeof(int));

    
    for(i = 0; i < satir; i++)
	matris[i] = (int *) calloc(kolon, sizeof(int));

    
    for(s = 0; s < satir; s++)
	for(k = 0; k < kolon; k++) {
	    printf("Matrisin elemani girin: matris[%d][%d] = ", s, k); 
	    scanf("%d", &(matris[s][k]));
        }

    printf("\nGirilen matris:\n");
    
  
    for(s = 0; s < satir; s++) {
	for(k = 0; k < kolon; k++)
	    printf("%4d", matris[s][k]);

        printf("\n\n");
    }
    
    
     printf("2. Matrisin satir sayisi: ");
    scanf("%d", &satir2);

    printf("2. Matrisin kolon sayisi: "); 
    scanf("%d", &kolon2);


    matris2 = (int **) calloc(satir2, sizeof(int));

  
    for(i = 0; i < satir2; i++)
	matris2[i] = (int *) calloc(kolon2, sizeof(int));

    for(s = 0; s < satir2; s++)
	for(k = 0; k < kolon2; k++) {
	    printf("Matrisin elemani girin: matris[%d][%d] = ", s, k); 
        }

    printf("\nGirilen matris:\n");
    
   
    for(s = 0; s < satir2; s++) {
	for(k = 0; k < kolon2; k++)
	    printf("%4d", matris2[s][k]);

        printf("\n");
    }

    printf("\nCarpim matirisi:\n");
    
    matrisc = (int **) calloc(satir, sizeof(int));

   
    for(i = 0; i < satir; i++)
	matrisc[i] = (int *) calloc(kolon2, sizeof(int));
    
  
    for(s=0; s<satir; s++){
       for(k=0; k<kolon2; k++){
      
          for(toplam=0, c=0; c<satir2; c++)
             toplam += matris[s][c]*matris2[c][k];

          matrisc[s][k] = toplam;
          printf("%4d",matrisc[s][k]);
       }
       printf("\n");
    }
    printf("\n");
    pthread_t threads[m];
    fflush(stdout);


    creating_theads = 1;
    printf("Threadler yaratiliyor...\n");
    fflush(stdout);
    for(i=0;i<m;i++) {
        printf("Thread #%d/%d yaratildi.\n",i+1,m);
        fflush(stdout);
        pthread_create(&threads[i], NULL, &init, i);
    }

    pthread_mutex_lock(&creating_theads_mutex);
    creating_theads = 0;
    pthread_mutex_unlock(&creating_theads_mutex);

    printf("Thread yaratimi tamamlamdi. Simdi beklemelerin bitmesi icin mesaj gonderilecek.\n");
    fflush(stdout);

    
    pthread_mutex_lock( &condition_mutex );
    pthread_cond_broadcast( &condition_cond );
    pthread_mutex_unlock( &condition_mutex );

    printf("Beklemekte olabilecek threadlere isleme baslamasini soyleyen mesaj gonderildi.\n");

    fflush(stdout);
    for(i=0;i<m;i++) {
        printf("Main thread #%d/%d'nin bitmesini bekliyor...\n",i+1,m);
        pthread_join(threads[i],NULL);
    }

    printf("\nMatris C:\n");
    for(i=0;i<m;i++) {
        for(j=0;j<k;j++) {
            printf("%d\t", matrisC[i][j]);
        }
        printf("\n");
    }
}

