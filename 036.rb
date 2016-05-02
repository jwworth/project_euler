# The decimal number, 585 = 10010010012 (binary), is palindromic in both bases.

# Find the sum of all numbers, less than one million, which are palindromic in
# base 10 and base 2.

# (Please note that the palindromic number, in either base, may not include
# leading zeros.)

require 'benchmark.rb'

def is_palindrome?(number)
  number == number.to_s.reverse.to_i
end

def binary(number)
  number.to_s(2).to_i
end

def double_base_palindrome?(number)
  is_palindrome?(number) && is_palindrome?(binary(number))
end

def double_base_palindromes(limit)
  sum = 0
  (1...limit).each { |number| sum += number if double_base_palindrome?(number) }
  sum
end

puts "Answer: #{ double_base_palindromes(1000000) }"
puts "Time: #{ Benchmark.measure { double_base_palindromes(1000000) } }"
