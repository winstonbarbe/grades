# The following line runs the code from the "grades.rb" file.
require_relative 'grades.rb'

# Once that's done, we proceed with the rest of the code below.

# # Tests

# # Test 1
puts "TEST #1: Typical A grade"
if final_grade([100.0, 90.0, 80.0, 90.0]) == "A"
	puts "TEST #1 passed"
else
	puts "TEST #1 failed"
end

# # Test 2
# puts
# puts "TEST #2: Typical B grade"
# if final_grade([100.0, 90.0, 80.0, 80.0]) == "B"
# 	puts "TEST #2 passed"
# else
# 	puts "TEST #2 failed"
# end

# # Test 3
# puts
# puts "TEST #3: Typical C grade"
# if final_grade([70.0, 90.0, 72.0, 77.0]) == "C"
# 	puts "TEST #3 passed"
# else
# 	puts "TEST #3 failed"
# end

# # Test 3
# puts
# puts "TEST #3: Typical C grade"
# if final_grade([70.0, 90.0, 72.0, 77.0]) == "C"
# 	puts "TEST #3 passed"
# else
# 	puts "TEST #3 failed"
# end

# # Test 4
# puts
# puts "TEST #4: Typical D grade"
# if final_grade([60.0, 90.0, 62.0, 64.0]) == "D"
# 	puts "TEST #4 passed"
# else
# 	puts "TEST #4 failed"
# end

# # Test 5
# puts
# puts "TEST #5: Typical F grade"
# if final_grade([55.0, 43.0, 88.0, 20.0, 60.0]) == "F"
# 	puts "TEST #5 passed"
# else
# 	puts "TEST #5 failed"
# end

# # Test 6
# puts
# puts "TEST #6: Student took no tests"
# if final_grade([]) == "I"
# 	puts "TEST #6 passed"
# else
# 	puts "TEST #6 failed"
# end

# # Test 7
# puts
# puts "TEST #7: Ensure that rounding is taking place"
# if final_grade([88.0, 90.0, 85.0, 95.0]) == "A"
# 	puts "TEST #7 passed"
# else
# 	puts "TEST #7 failed"
# 	puts "(NOTE: The average is 89.5, which should round up to 90.)"
# end