def en_buyuk_sayi(sayi):
    liste = []
    sayi = str(sayi)
    for i in range(len(sayi)):
        b=sayi[i]
        liste.append(b)
    d=""
    for i in range(len(liste)):
        f=max(liste)
        liste.remove(f)
        d+=f
    
    print d
        
   
