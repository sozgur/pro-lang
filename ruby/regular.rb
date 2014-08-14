puts "sumeyra".sub('sum','sen') 
puts "sumeyra ozgur".sub('u', '') #tek bir karekter için yapar.
puts "sumeyra ozgur".gsub('u', '') #tüm karekter için yapar.
puts "sumeyra ozgur".sub(/^..../, 'sana') #ilk 4 karekter değişimi için 
puts "sumeyra ozgur".sub(/....$/, 'sana') #son 4 karekter değişimi için 
puts "sumeyra ozgur".sub(/\A..../, 'sana') # ^ ile \A aynı
puts "sumeyra ozgur".sub(/....\Z/, 'sana') # $ ile \Z aynı
"sumeyra ozgur".scan(/../) {|x| puts x} 
"Gecen gun 50 litre benzin aldim, inanirmisin 160Tl tuttu".scan(/\d+/) {|x| puts x}
"Gecen gun 50 litre benzin aldim, inanirmisin 160Tl tuttu".scan(/[aeiou]/) {|x| puts x}
puts""
"Gecen gun 50 litre benzin aldim, inanirmisin 160Tl tuttu".scan(/[a-z]/) {|x| puts x}
if "Ben Ruby ogreniyorum" =~ /[aeiou]/ 
puts "Sesli harfler var"
else
puts "Sesli harf yok"
end
