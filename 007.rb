# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see
# that the 6th prime is 13.

# What is the 10 001st prime number?

require_relative 'primality.rb'
require 'benchmark'

def large_prime_number(limit)
  primes = 1
  count = 2
  while primes < limit
    count += 1
    primes += 1 if is_prime?(count)
  end
  count
end

puts "Answer: #{ large_prime_number(10001) }"
puts "Time: #{ Benchmark.measure { large_prime_number(10001) } }"