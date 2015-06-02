## TESTING WITH THE OOP READING EXAMPLES ##
# WITH CLASSES #
puts "\nreporting WITH classes"

def max_score(scores)
  max = scores.first
  scores.each do |score|
    if score > max
      max = score
    end
  end

  max
end

def min_score(scores)
  min = scores.first

  scores.each do |score|
    if score < min
      min = score
    end
  end

  min
end

def average_score(scores)
  total = 0.0

  scores.each do |score|
    total += score
  end

  total / scores.length
end

def letter_grade(average_score)
  if average_score >= 90.0
    "A"
  elsif average_score >= 80.0
    "B"
  elsif average_score >= 70.0
    "C"
  elsif average_score >= 60.0
    "D"
  else
    "F"
  end
end

def summary(first, last, grade, average, max, min)
  <<SUMMARY
Scores for #{first} #{last}

Final Grade: #{grade}
Average Score: #{average}
Max Score: #{max}
Min Score: #{min}
SUMMARY
end



first_name = "Bob"
last_name = "Loblaw"
test_scores = [82, 91, 88, 98, 71]

max = max_score(test_scores)
min = min_score(test_scores)
avg = average_score(test_scores)
grade = letter_grade(avg)
puts
puts summary(first_name, last_name, grade, avg, max, min)




### WITHOUT CLASSES
#
# first_name = "Bob"
# last_name = "Loblaw"
# test_scores = [82, 91, 88, 98, 71]
# # Iterate through each test score to find the highest one.
# max_score = test_scores.first
#
# test_scores.each do |score|
#   if score > max_score
#     max_score = score
#   end
# end
#
# # Iterate through each test score to find the lowest one.
# min_score = test_scores.first
#
# test_scores.each do |score|
#   if score < min_score
#     min_score = score
#   end
# end
#
# # Computer the average score by adding up the values and dividing
# # by the count.
# total_score = 0.0
#
# test_scores.each do |score|
#   total_score += score
# end
#
# average_score = total_score / test_scores.length
#
# # Assign a letter grade based on the average score.
# if average_score >= 90.0
#   letter_grade = "A"
# elsif average_score >= 80.0
#   letter_grade = "B"
# elsif average_score >= 70.0
#   letter_grade = "C"
# elsif average_score >= 60.0
#   letter_grade = "D"
# else
#   letter_grade = "F"
# end
#
# # Output the results to the screen.
# puts "\nreporting WITHOUT classes"
#
# puts "\nScores for #{first_name} #{last_name}"
# puts
# puts "Final Grade: #{letter_grade}"
# puts "Average Score: #{average_score}"
# puts "Max Score: #{max_score}"
# puts "Min Score: #{min_score}"
