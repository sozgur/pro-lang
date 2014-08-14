# -*- coding: cp1254 -*-
from math import*
def dort_isLem(x,y,islec):
    if islec==+:
        print "işlemin sonucu:" x+y
    elif islec==-:
        print "işlemin sonucu:" x-y
    elif islec==*:
        print "işlemin sonucu:" x*y
    elif islec==/:
        print "işlemin sonucu:" x/y
    elif islec==%:
        print x,"in",y,"ye bölümünden kalan:" x%y
