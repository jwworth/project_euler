# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143 ?

require 'benchmark'
require_relative 'primality.rb'

def largest_prime_factor(number)
  prime_factors = []
  (1..(Math.sqrt(number))).each do |n|
    prime_factors << n if number % n == 0 && is_prime?(n)
  end
  prime_factors[-1]
end

puts "Answer: #{ largest_prime_factor(600851475143) }"
puts "Time: #{ Benchmark.measure { largest_prime_factor(600851475143) } }"