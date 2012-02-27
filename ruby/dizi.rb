dizi = [1,2,3,4,5,6]
puts dizi[3]
dizi[5] = 12 #6 olan değer artık 12 oldu
puts dizi
bos = []
bos << "yeni eleman" #yeni elemam eklemek için << işaretini kullandık
puts bos
puts dizi.first #ilk elemanı verir. dizi[0] ile eşdeğerdir.
puts dizi.last #son elemanı verir. dizi[-1] ile eşdeğerdir.
puts dizi[0]
puts dizi[-1]
bos.push("kalem") #yeni bir eleman eklemek için
puts bos
yeni = ["pc", "kalem","sinema", "tabak","yemek"]
puts yeni.first(2).join(" ") #ilk 2 eleman
puts yeni.last(2).join(" ") #son 2 eleman
dizi.pop #dizinin son elemanının diziden atılması
puts dizi
x = "sumeyra ozgur".scan(/\w/).join(',')
puts x
y = "kimsin sen beni nereden taniyorsun".split(/ /) 
puts y
y = "kimsin sen beni nereden taniyorsun".split(/i/).inspect
puts y
y = "kimsin sen beni nereden taniyorsun".split(//).inspect
puts y
y = "kimsin sen beni nereden taniyorsun".split(/\s+/).inspect #s boşluk karekterlerine göre ayırdı.
puts y


