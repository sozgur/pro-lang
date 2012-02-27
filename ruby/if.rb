x = 10
if x > 0 && x < 20
puts "cok ufak bir rakam" 
end
x = 21
unless x > 0 && x < 20 # tersten olmasını sağlar if not gibi
puts "tersten oldu"
end

x = 24
if x.between?(10, 30)
puts "bu deger araliklara uygun."
end


