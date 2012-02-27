def ing_aLfabetik_artan():
    dosya=open("sozcuk.txt")
    liste=[]
    f,d = 0,0
    for i in dosya:
        a=i.strip()
        liste.append(a)
    for i in liste:
        s=liste[f]
        f+=1
        b=list(s)    
        b.sort()
        if b==list(s):
            d+=1
            b="".join(b)
            print b
    print "\nAlfabetik artan sozcuk sayisi:",d
                
         
