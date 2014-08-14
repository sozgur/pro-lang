def maxx(liste):
    boyut=liste[0]
    while type(boyut)==list:
        boyut=boyut[0]
    for i in liste:
        if type(i)==list:
            a=maxx(i)
            if boyut<a:
                boyut=a
        else:
            if boyut<i:
                boyut=i
    return boyut
