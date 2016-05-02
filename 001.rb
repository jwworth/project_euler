# If we list all the natural numbers below 10 that are multiples of 3 or 5, we 
# get 3, 5, 6 and 9. The sum of these multiples is 23.

# Find the sum of all the multiples of 3 or 5 below 1000.

def sum_of_multiples(limit, value_a, value_b)
  sum = 0
  (1...limit).each { |n| sum += n if n % 3 == 0 || n %5 == 0 }
  sum
end

puts sum_of_multiples(10, 3, 5)
puts sum_of_multiples(1000, 3, 5)
