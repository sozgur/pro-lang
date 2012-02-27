def tek(liste):
    lise=[]
    for i in liste:
        if type(i)==list:
            a=tek(i)
            for j in a:
                lise.append(j)
        else:
            lise.append(i)
    return lise
