puts "LEAP YEAR CHECKER"
loop do
  puts "Enter a leap year:"
  year_input = gets.chomp.to_i
    if year_input % 4 == 0 && year_input % 100 != 0 || year_input % 400 == 0
      puts "#{year_input} is a leap year."
    elsif
      puts "#{year_input} is not a leap year"
    end
  end
