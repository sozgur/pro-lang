def yariLar_topLami(n):
    if type(n)==float:
        print "hata"
    elif n>0:
        a=0
        b=n/2.0
        for i in range(n-1):
            b=b/2.0
            if b<=0.1:
                break
            a=a+b          
        print a+(n/2.0)
    else:
        print "hata"
        
