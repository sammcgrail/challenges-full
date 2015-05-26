puts
times_lost = 0
times_won = 0

while times_won < 2 && times_lost < 2 do
  puts("Player score: #{times_won}, Computer score: #{times_lost}")
  puts("Choose rock (r), paper (p), or scissors (s): ")
  input = gets.chomp
  puts
  if input == "r" || input == "p"|| input == "s"
    puts "You've entered rock (r), paper (p), or scissors (s)"
    if input == "r"
      puts "Player chose rock."
    elsif input == "p"
      puts "Player chose paper."
    elsif input == "s"
      puts "Player chose scissors"
    end
    computer_roll = rand(3).to_i
    # 0 = r
    # 1 = p
    # 2 = s
      if computer_roll == 2
        puts "Computer chose scissors."
        if input == "p"
          puts "Scissors beats paper, computer wins the round"
          times_lost = times_lost + 1
        elsif input == "s"
          puts "Tie, choose again."
        else input == "r"
          puts "Rock beats scissors, player wins the round"
          times_won = times_won + 1
      end
      elsif computer_roll == 1
        puts "Computer chose paper."
        if input == "r"
          puts "Paper beats rock, computer wins the round"
          times_lost = times_lost + 1
        elsif input == "p"
          puts "Tie, choose again."
        else input == "s"
          puts "Scissors beats paper, player wins the round"
          times_won = times_won + 1
      end
      else computer_roll == 0
        puts "Computer chose rock."
        if input == "s"
          puts "Rock beats scissors, computer wins the round"
          times_lost = times_lost + 1
        elsif input == "r"
          puts "Tie, choose again."
        else input == "p"
          puts "Paper beats rock, player wins the round"
          times_won = times_won + 1
      end
    end
    else
    puts "Invalid entry, try again."
  end
  if times_won == 2
    puts
    puts "Player wins!"
    puts
  end
  if times_lost == 2
    puts
    puts "Computer wins!"
    puts
  end
end
