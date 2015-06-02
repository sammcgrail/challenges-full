
puts; 
puts;
 
beer = 99

while beer >= 0 do
	if beer == 0
 		puts("No more bottles of beer on the wall, no more bottles of beer.") 
 		puts("Go to the store and buy some more, 99 bottles of beer on the wall.")	
 	elsif beer % 10 == 0
   		puts("#{beer} bottles of beer on the wall, #{beer} bottles of beer!") 
   		puts("Take one down pass it around, #{(beer - 1)} bottles of beer on the wall.")
   	elsif beer == 1
   		puts("#{beer} bottle of beer on the wall, #{beer} bottle of beer.") 
   		puts("Take one down pass it around, no more bottles of beer on the wall.")
   	elsif beer == 2
   		puts("#{beer} bottles of beer on the wall, #{beer} bottles of beer!") 
   		puts("Take one down pass it around, #{(beer - 1)} bottle of beer on the wall.")
	else
		puts("#{beer} bottles of beer on the wall, #{beer} bottles of beer.") 
   		puts("Take one down pass it around, #{(beer - 1)} bottles of beer on the wall.")

   	end 
   
   puts;
   beer -=1 
  
end	

puts;
