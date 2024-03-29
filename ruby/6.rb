# The sum of the squares of the first ten natural numbers is,
# 1^2 + 2^2 + ... + 10^2 = 385
# The square of the sum of the first ten natural numbers is,
# (1 + 2 + ... + 10)^2 = 552 = 3025
# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.
# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

def difference
  diff = sum_of_squares - square_of_sum
  diff.abs
end

def sum_of_squares
  sum = 0
  (1..100).each do |s|
    sum += s**2
  end
  sum
end

def square_of_sum
  ((1..100).reduce(:+))**2
end

difference

# 25164150
