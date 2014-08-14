# -*- coding: utf-8 -*-
def basamaklar_toplami(sayi):

    deger = 0

    while sayi:

        basamak = sayi % 10

        sayi = sayi / 10

        deger += basamak

    print deger
