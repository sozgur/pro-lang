# -*- Coding: utf-8 -*-

def degisim(eski,yeni,metin):
    liste = list(metin)
    for i in liste:
        if i == eski:
            a = liste.index(i)
            liste.remove(i)
            liste.insert(a,yeni)
    d = ""
    for i in liste:
        d += i
    print d
