sozluk = {"sayi1" => 20, "sayi2" => 19}
sozluk.delete("sayi1")
puts sozluk.keys 

sozluk2 = {"sayi1" => 19, "sayi2" => 20, "sayi" => 30}
sozluk2.delete_if { |x,y| y<26 }
puts sozluk2.keys
