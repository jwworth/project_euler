# Determine primality

def is_prime?(number)
  return false if number < 2
  prime = nil
  (2..(Math.sqrt(number))).each { |n| prime = false if number % n == 0 }
  prime == false ? false : true
end