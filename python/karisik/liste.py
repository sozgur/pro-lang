def toplam(liste):
    a = 0
    for i in liste:
        if type(i)==list:
            a+=toplam(i)
        else:
            a+=i
    return a
    
