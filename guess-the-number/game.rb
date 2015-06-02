random_number = rand(1..1000).to_i
puts "btw for testing purposes the nubmer is: #{random_number}"

loop do
  puts "Guess a number between 1 and 1000:"
  input = gets.chomp.to_i
  if input > random_number.to_i
    puts "Too high, try again."
  elsif input < random_number.to_i
    puts "Too low, try again."
  else input == random_number.to_i
    puts "Congratulations, you guessed the number!"
    break
  end
end 


# could implement a way to catch if input is a character, and put error
