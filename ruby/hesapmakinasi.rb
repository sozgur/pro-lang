#!/usr/bin/ruby
# encoding: utf-8

class Hesap_Makinasi
	attr_reader :x, :y, :secenek
	
	def initialize
	    @x, @y, @secenek = x, y, secenek
	end
	
	def hesap
		while TRUE
			print "Toplama için 1'e\n"
			print "Çıkarma için 2'e\n"
			print "Bölme için 3'e\n"
			print "Çarpma için 4'e basın\n"
		
			@secenek = gets #sring olarak alır
	
	
			if @secenek.to_i == 1 #float'a çevirdik
				print "ilk sayi:"
				@x = gets
				print "ikinci sayi:"
				@y = gets
				print "Sonuç=", @x.to_f + @y.to_f
				puts
				puts 
			
			elsif @secenek.to_i == 2
				print "ilk sayi:"
				@x = gets
				print "ikinci sayi:"
				@y = gets
				print "Sonuç=", @x.to_f - @y.to_f
				puts
				puts
			
			elsif @secenek.to_i == 3
				print "ilk sayı:"
				@x = gets
				print "ikinci sayı:"
				@y = gets
				print "Sonuç=", @x.to_f / @y.to_f
				puts 
				puts
				
			elsif @secenek.to_i == 4
				print "ilk sayı:"
				@x = gets
				print "ikinci sayı:"
				@y = gets
				print "Sonuç=", @x.to_f * @y.to_f
				puts 
				puts 
			
			else
				print "işlem mevcut değil Tekrar deneyiniz\n"
				puts
				
			end
		end
	end
end

h = Hesap_Makinasi.new
h.hesap


