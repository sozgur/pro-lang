# -*- coding: utf-8 -*-
#"python imaging" adlı paketi yüklemeniz gerekecektir.
# http://www.dmi.gov.tr/tahmin/il-ve-ilceler.aspx?m=SAMSUN

from Tkinter import*
from tkMessageBox import*
import ImageTk
import urllib2

pen = Tk()
pen.title("HAVA TAHMINI")
pen.tk_setPalette("#C8A9D9")

pgen = 600
pyuk = 700
ekrangen = pen.winfo_screenwidth()
ekranyuk = pen.winfo_screenheight()
x = (ekrangen - pgen) / 2
y = (ekranyuk - pyuk) / 2
pen.geometry("%dx%d+%d+%d"%(pgen, pyuk, x, y)) 
             
simge=ImageTk.PhotoImage(file="hava.jpg")
simge2=ImageTk.PhotoImage(file="buton.jpg")

label = Label(text = "HAVA TAHMIN ARALIGI",fg="black" ,image=simge,\
              compound="bottom" ,font = "Times 15 bold")
label.pack(side=TOP)

cerceve=Frame()
cerceve.pack(pady=5)

label2 = Label(text = "Lüfen türkçe karekter olmadan sehir adi giriniz!", \
               font = "Times 12 bold",fg = "#17772C")
label2.pack()


label3=Label(text = "SEHIR" ,fg="#14051C",font = "Times 12 bold")
label3.pack()

giris = Entry(bg="white")
giris.pack()
giris.focus_set()

cerceve2=Frame()
cerceve2.pack(pady=5)

def havadurumu(event=None):
    if not giris.get():
        showerror("Hata!","Birsey yazmadiniz!",\
                  detail="Lüfen mevcut bir sehiradi yaziniz.")
    else:
        sehir = giris.get()
        page = urllib2.urlopen("http://www.dmi.gov.tr/tahmin/il-ve-ilceler.aspx?m="+sehir)                       
        text = page.read().decode("utf8")
                       
        kb = text.find('"minS"')
        sb = text.find(">", kb) + 1
        ss = text.find("<", sb)
        minS = text[sb:ss]
                       
        kb = text.find('"maxS"')
        sb = text.find(">", kb) + 1
        ss = text.find("<", sb)
        maxS = text[sb:ss]
                       
        a="%s icin hava durumu:\nmin = %s, max = %s" % (sehir, minS, maxS)
        giris.delete(0,END)
        entry.delete(0,END)
        for i in a:
            entry.insert(END,i)
            
label4 = Label(text = "Sehir ismini girdikten sonra asagidaki butona\
 tiklayiniz yada enter'a basiniz!",\
               font="Times 12 bold", fg = "#17772C")
label4.place(relx = 0.08, rely = 0.62)

buton = Button(bg="black", image=simge2,\
               compound="bottom",command = havadurumu)
buton.place(relx = 0.37, rely = 0.66, relheight = 0.21, relwidth = 0.25)


entry=Entry(bg="white")
entry.place(relx=0.24,rely=0.88,relheight=0.05,relwidth=0.5)


pen.bind("<Return>", havadurumu)

label5=Label(text = "SÜMEYRA ÖZGÜR", fg="black" , font = "Helvatica 10 bold")
label5.place(relx=0.42 ,rely=0.93)

pen.mainloop()
