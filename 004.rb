# A palindromic number reads the same both ways. The largest palindrome made
# from the product of two 2-digit numbers is 9009 = 91 × 99.

# Find the largest palindrome made from the product of two 3-digit numbers.

require 'benchmark'

def is_palindrome?(number)
  number == number.to_s.reverse.to_i ? true : false
end

def largest_palindrome(limit)
  palindromes = []
  limit.downto(1) do |x|
    limit.downto(1) do |y|  
    product = x * y
    palindromes << product if is_palindrome?(product)
    end
  end
  palindromes.max
end

puts "Answer: #{ largest_palindrome(999) }"
puts "Time: #{ Benchmark.measure { largest_palindrome(999) } }"
