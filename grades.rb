def final_grade(array)
  # This method currently has no code.
  # Your job is to write the code to get the method to work!
  if array.empty?
    return "I"
  else
    scores = array
    scores_sum = scores.sum
    scores_avg = (scores_sum / scores.length).round
  end
  if scores_avg >= 90
    "A"
  elsif scores_avg >= 80
    "B"
  elsif scores_avg >= 70
    "C"
  elsif scores_avg >= 60
    "D"
  else
    "F"
  end

end