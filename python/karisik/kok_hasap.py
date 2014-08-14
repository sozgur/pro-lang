# -*- coding: cp1254 -*-
from math import*
def kok_hesapLa(a,b,c):
    
    if b**2-(4*a*c)<0:
        print " denklemin gerçel kökü bulunmamaktadır."
    else:
        w1=(-b+(b**2-4*a*c)**0.5)/(2*a)
        print "Denklemin birinci kökü:",w1
        w2=(-b-(b**2-4*a*c)**0.5)/(2*a)
        print "Denklemin ikinci kökü:",w2
