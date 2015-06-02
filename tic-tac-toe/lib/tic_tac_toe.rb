# PAIR PROGRAMMING STUFF FROM DROD AND DK


board1 = [['o', 'o', 'o'],
          [' ', ' ', ' '],
          [' ', ' ', ' ']]
board2 = [['o', ' ', ' '],
          ['o', ' ', ' '],
          ['o', ' ', ' ']]



def winner?(board)
  horizontal? = board.any? { |row| row == ['o', 'o', 'o']}
  columns = [[],[],[]]
  board.each do |row|
    columns[0] << row [0]
    columns[1] << row [1]
    columns[2] << row [2]
  end
  vertical? = board.any? { |row| row == ['o', 'o', 'o']}
  horizontal || vertical
end

puts "1 - #{winner?(board1)}"
puts "1 - #{winner?(board2)}"


puts winner?(board)


#
# ```ruby
# game = [['o', ' ', ' '],
#         ['o', ' ', ' '],
#         ['o', ' ', ' ']]
#
# winner?(game) #=> true
#
# game = [['o', ' ', 'x'],
#         ['x', 'x', 'o'],
#         ['o', ' ', 'x']]
#
# winner?(game) #=> false
# ```
