
a=open("sozcuk.txt")
for i in a:
    b=i.strip()
    if len(b)>5:
        print b
