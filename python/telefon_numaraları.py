def telefonno(csv_dosyasi):
    import csv
    liste2=[]
    liste3=[]
    for i in csv.reader(open("telefon_no.csv")):
        listeno = "".join(i)
        liste2.append(listeno)
        liste3.append(listeno)
        
    liste4=[]
    for i in liste2:
        liste=[]
        while len(i)>0:
            a = i[:2]
            liste.append(int(a))
            i=i[2:]
        toplam = sum(liste)
        slotno = toplam % 11
        liste4.append(slotno)
        
  
    for j in liste3:
          j
    for k in liste4:
        print j, "=>", k
        
    
       
