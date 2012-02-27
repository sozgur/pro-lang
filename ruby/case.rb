yas = 35
case
when yas < 30 
puts "yasiniz #{yas} ve daha gencsin"
when yas == 30 
puts "yasiniz #{yas} ve yolun yarisina #{35-yas} var." 
when yas > 30
puts "yasiniz #{yas} ve yaslaniyorsunuz."
end

#tek satırda then ilede yazılabilir.
case
when yas < 30 then puts "yasiniz #{yas} ve daha gencsin"
when yas == 30 then puts "yasiniz #{yas} ve yolun yarisina #{35-yas} var." 
when yas > 30 then puts "yasiniz #{yas} ve yaslaniyorsunuz."
end

#then kullanmadan yapmak için then yerine ":" konulur.
