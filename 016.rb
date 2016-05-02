# 215 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.

# What is the sum of the digits of the number 21000?

require 'benchmark.rb'

def power_digit_sum(number, power)
  n = number ** power
  digits = n.to_s.split("")
  sum = 0
  digits.each { |digit| sum += digit.to_i }
  sum
end

puts "Answer: #{ power_digit_sum(2, 1000) }"
puts "Time: #{ Benchmark.measure { power_digit_sum(2, 1000) } }"
