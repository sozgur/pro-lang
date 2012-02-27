kopya=open("kopya.txt","w")
dosya=open("kaynak_kod.py","r")
for i in dosya:
    kopya.write(i)
kopya.close()
