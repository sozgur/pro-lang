def sondan_basa_yaz(cumle):
    if cumle==str(cumle):
        ters=""
        for harf in cumle[::-1]:
            ters+=harf
        return ters
    else:
        print "hata"
