x = [1,3]
y = ["sum","ozgur"]
z = x+y
puts z.inspect #p z de yazabiliriz.
a = [1,2,3,4]
b = [1,2]
c = a-b
puts c.inspect
dizi = []
puts "Bu bos bir dizi" if dizi.empty? 
yeni = ["sumeyra", "ozgur", "20"]
puts "Bu elaman dizide var" if yeni.include?("sumeyra")
puts yeni.reverse.join("-") #reverse ters çevirir 
puts yeni.reverse.reverse.join("-") #iki kere ters çevirerek aynı diziyi elde ettik.
