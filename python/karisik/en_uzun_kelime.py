
def en_uzun_kelime(cumle):
    liste = cumle.split()
    
    uzunluk = map(lambda x:len(x),liste) #Burasi liste donmektedir.
    print liste[uzunluk.index(max(uzunluk))] #listenin en uzununun indexini listede bul 
 
