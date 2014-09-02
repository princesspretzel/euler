# Surprisingly there are only three numbers that can be written as the sum of fourth powers of their digits:

# 1634 = 1^4 + 6^4 + 3^4 + 4^4
# 8208 = 8^4 + 2^4 + 0^4 + 8^4
# 9474 = 9^4 + 4^4 + 7^4 + 4^4
# As 1 = 1^4 is not a sum it is not included.

# The sum of these numbers is 1634 + 8208 + 9474 = 19316.

# Find the sum of all the numbers that can be written as the sum of fifth powers of their digits.

require 'pry'

def five_digit_number_loop
  sum_of_fifth_power_numbers = []
  (10000..99999).each do |x|
    digit_array = x.to_s.chars.map(&:to_i)
    if x == check_exponents(digit_array)
      sum_of_fifth_power_numbers << x
    end
  end
  puts sum_of_fifth_power_numbers.reduce(:+)
end

def check_exponents(digit_array)
  exp = 0
  exp_array = []
  digit_array.each do |num|
    exp = num ** 5
    exp_array << exp
  end
  exp_array.inject(:+)
end

five_digit_number_loop

# WRONG: 240559