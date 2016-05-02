# If we list all the natural numbers below 10 that are multiples of 3 or 5, we
# get 3, 5, 6 and 9. The sum of these multiples is 23.

# Find the sum of all the multiples of 3 or 5 below 1000.

require 'benchmark'

def sum_of_multiples(limit, value_a, value_b)
  sum = 0
  (1...limit).each { |n| sum += n if n % value_a == 0 || n % value_b == 0 }
  sum
end

puts "Answer: #{ sum_of_multiples(1000, 3, 5) }"
puts "Time: #{ Benchmark.measure {sum_of_multiples(1000, 3, 5) } }"