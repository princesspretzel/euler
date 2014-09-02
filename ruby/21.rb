# Let d(n) be defined as the sum of proper divisors of n (numbers less than n which divide evenly into n).
# If d(a) = b and d(b) = a, where a ≠ b, then a and b are an amicable pair and each of a and b are called amicable numbers.

# For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110; therefore d(220) = 284. The proper divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.

# Evaluate the sum of all the amicable numbers under 10000.
require 'pry'

def find_and_sum_amicable_pairs
  amicables = []
  (1..9999).each do |x|
    sum = find_divisors(x)
    if sum && (find_divisors(sum) == x) && (sum != x)
      amicables << x
      amicables << sum
    end
  end
  puts amicables.uniq.reduce(:+)
end

def find_divisors(x)
  divisors = [1]
  pointer = Math.sqrt(x).floor
  (2..pointer).each do |y|
    if x % y == 0
      z = x / y
      divisors << y
      divisors << z
    end
  end
  divisors.uniq.reduce(:+)
end

find_and_sum_amicable_pairs

# 31626