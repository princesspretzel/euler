# A perfect number is a number for which the sum of its proper divisors is exactly equal to the number. For example, the sum of the proper divisors of 28 would be 1 + 2 + 4 + 7 + 14 = 28, which means that 28 is a perfect number.

# A number n is called deficient if the sum of its proper divisors is less than n and it is called abundant if this sum exceeds n.

# As 12 is the smallest abundant number, 1 + 2 + 3 + 4 + 6 = 16, the smallest number that can be written as the sum of two abundant numbers is 24. By mathematical analysis, it can be shown that all integers greater than 28123 can be written as the sum of two abundant numbers. However, this upper limit cannot be reduced any further by analysis even though it is known that the greatest number that cannot be expressed as the sum of two abundant numbers is less than this limit.

# Find the sum of all the positive integers which cannot be written as the sum of two abundant numbers.

require 'pry'

def abundant_numbers
  abundance = []
  (12..28123).each do |x|
    if find_divisors(x) > x
      abundance << x
    end
  end
  sums_of_abundant_pairs = abundance.permutation(2).to_a.map!{|x| x.inject(:+)}
  not_abundant_sums = (1..28123).to_a - sums_of_abundant_pairs.uniq
  puts (not_abundant_sums.select{|x| x <= 28123}.inject(:+))
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

abundant_numbers