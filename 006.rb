# The sum of the squares of the first ten natural numbers is,

# 12 + 22 + ... + 102 = 385
# The square of the sum of the first ten natural numbers is,

# (1 + 2 + ... + 10)2 = 552 = 3025
# Hence the difference between the sum of the squares of the first ten natural
# numbers and the square of the sum is 3025 − 385 = 2640.

# Find the difference between the sum of the squares of the first one hundred
# natural numbers and the square of the sum.

require 'benchmark'

def sum_square_difference(limit)
  sum_of_squares = 0
  (1..limit).each { |number| sum_of_squares += number ** 2 }
  sum = 0
  (1..limit).each { |number| sum += number }
  sum ** 2 - sum_of_squares
end

puts "Answer: #{ sum_square_difference(100) }"
puts "Time: #{ Benchmark.measure { sum_square_difference(100) } }"
