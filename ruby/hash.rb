insanlar = {
"sumeyra" => {
"isim" => "sumeyra ozgur",
"yas" => 20,
"cinsiyet"  => "bayan",
"esyalari" => ["telefon", "bilgisayar", "mause"]
},
"tuba" => {
"isim" => "tuba nur",
"yas" => "21",
"cinsiyet" => "bayan" 
}
}

puts insanlar["sumeyra"]["esyalari"].join("&")
puts insanlar["tuba"]["isim"]
puts insanlar["tuba"].inspect
puts insanlar.keys
puts insanlar["tuba"].values
