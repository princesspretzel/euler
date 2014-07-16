# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

require 'prime'

array = 600851475143.prime_division
array.flatten.max

# 6857

# def largest_prime_factor_of(num)
#   array = []
#   (2..num).step(2) {|i| array << i if num%i===0 && prime(i)}
#   array.max
# end

# def prime(num)
#   (2..Math.sqrt(num)).each do |j|
#     if num%j==0
#       return false
#     else
#       return true
#     end
#   end
# end

# largest_prime_factor_of(600851475143)
