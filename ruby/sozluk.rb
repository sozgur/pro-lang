sozluk = {'isim' => 'sumeyra ozgur', 'nick' => 'sozgur'}
puts sozluk['isim']
sozluk['isim'] = 'sumeyra'
puts sozluk['isim']

sozluk2 = {"sayi1" => 20, "sayi2" => 19}
sozluk2.each { |x,y| puts "#{x}'in degeri #{y}'dir"}
puts sozluk2.keys.join(' ve ') #anahtarlarını ekrana bastırmak
puts sozluk2.values.join(' ve ') #değerlerini ekrana bastırmak

