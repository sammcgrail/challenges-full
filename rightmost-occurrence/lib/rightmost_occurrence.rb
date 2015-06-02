puts "enter a string"
string = gets
puts "enter the character of choice to get \nthe index of rightmost occurence of said character"
letter = gets.chomp
reversed_string = string.reverse
rightmost = (string.length - 1) - reversed_string.index(letter)
puts rightmost
