# -*- coding: cp1254 -*-

def filtre(dosya_adi,karakter):
    ac=open(dosya_adi)
    for i in ac:
        a=i.strip()
        if karakter not in a:
            print a
        
            
        

       
        
        

    
            
