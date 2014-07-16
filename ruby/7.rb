# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
# What is the 10 001st prime number?

require 'prime'

array = []
number = 0
while array.length < 10001
  number+=1
  if Prime.prime?(number)
    array << number
  end
end
array.last

# 104743
