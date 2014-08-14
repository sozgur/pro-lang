# -*- coding: cp1254 -*-
def mutLak(x):

    """
    Bu bir doctest ornegidir.
    >>>mutLak_deger(3+4j)
    5
    >>>mutLak_deger(3)
    karmasik bir sayi giriniz.
    """
    
    if type(x)==complex:
        x = abs(x)
        return x
    elif type(x)!=complex:
        return "Lutfen karmasik sayi giriniz :"
def _test():
    import doctest
    doctest.testmod()
