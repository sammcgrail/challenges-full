require "pry"

# method test
def hello
  gets.chomp
end


input = hello
if input == "Patriots"
  puts "you picked pats"
else binding.pry
  puts "nah"
end
