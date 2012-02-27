def basatek_topla(sayi):
    deger = 0
    while sayi:
        basamak=sayi%10
        sayi=sayi/10
        if basamak%2!=0:
            deger+=basamak
    print deger
    
