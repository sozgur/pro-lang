# -*- coding: cp1254 -*-

def bosLuk_birak_tekrarLa(sozcuk, bosLuk_uzunLugu, tekrar_sayisi):
    """
    Girilen sözcüğü istenen boslukta ve istenen sayıda ekrana yazdırır.
    
    >>>bosLuk_birak_tekrarLa(python, 1, 4)
    
    python python python python
    """
    for i in range(0, bosLuk_uzunLugu): 
        yeni_sozcuk = sozcuk + ' '
        sozcuk = yeni_sozcuk
        
    for j in range(0,tekrar_sayisi):
        print yeni_sozcuk,
