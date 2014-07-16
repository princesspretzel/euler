# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# Find the sum of all the primes below two million.

require 'prime'

sum = 0
(1..2000000).step(2) do |x|
  if Prime.prime?(x)
    sum += x 
  end
end
sum+2

# 142913828922
