class Student
  def initialize(first_name, last_name, scores)
    @first_name = first_name
    @last_name = last_name
    @scores = scores
  end

  def summary
    <<SUMMARY
Scores for #{@first_name} #{@last_name}

Final Grade: #{letter_grade}
Average Score: #{average_score}
Max Score: #{max_score}
Min Score: #{min_score}
SUMMARY
  end

  def max_score
    max = @scores.first

    @scores.each do |score|
      if score > max
        max = score
      end
    end

    max
  end

  def min_score
    min = @scores.first

    @scores.each do |score|
      if score < min
        min = score
      end
    end

    min
  end

  def average_score
    total = 0.0

    @scores.each do |score|
      total += score
    end

    total / @scores.length
  end

  def letter_grade
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
end

  students = [
    { first_name: "Bob", last_name: "Loblaw", test_scores: [82, 91, 88, 98, 71] },
    { first_name: "Barry", last_name: "Zuckerkorn", test_scores: [52, 68, 39, 71, 72] },
    { first_name: "Bilbo", last_name: "Baggins", test_scores: [75, 84, 88, 68, 81] }
  ]

  students.each do |student|
    puts student.summary
  end
