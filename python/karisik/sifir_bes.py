# -*- coding: cp1254 -*-
def sifir_bes(sayi):
    
    d=""
    while sayi:
        basamak=sayi%10
        sayi=sayi/10
        if basamak==0 or basamak==5:
            d+=str(basamak)
    print len(d)
        
            
