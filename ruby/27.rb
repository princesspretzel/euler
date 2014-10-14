# Euler discovered the remarkable quadratic formula:

# n² + n + 41

# It turns out that the formula will produce 40 primes for the consecutive values n = 0 to 39. However, when n = 40, 40^2 + 40 + 41 = 40(40 + 1) + 41 is divisible by 41, and certainly when n = 41, 41² + 41 + 41 is clearly divisible by 41.

# The incredible formula  n² − 79n + 1601 was discovered, which produces 80 primes for the consecutive values n = 0 to 79. The product of the coefficients, −79 and 1601, is −126479.

# Considering quadratics of the form:

# n² + an + b, where |a| < 1000 and |b| < 1000

# where |n| is the modulus/absolute value of n
# e.g. |11| = 11 and |−4| = 4
# Find the product of the coefficients, a and b, for the quadratic expression that produces the maximum number of primes for ***consecutive values*** of n, starting with n = 0.

require 'pry'

def prime?(num)
  top = Math.sqrt(num).round
  (2..top).none? { |x| (num % x) == 0 }
end

def prime_sieve(num)
  array = [2]
  (3..num).each do |x|
    array << x if !(array.any? {|y| (x % y) == 0 })
  end
  array
end

def possible_b(num)
  neg_array = prime_sieve(num).map!{|x| x = -x }.reverse
  pos_array = prime_sieve(num)
  array = neg_array.concat(pos_array)
  array
end

def quadratic
  consecutive_primes = [0, 0, 0]
  (-999..999).each do |a|
    possible_b(999).each do |b|
      n = 1
      result = 3
      while prime?(result.abs) 
        n += 1
        result = n**2 + a*n + b
        consecutive_primes = [n, a ,b] if (n > consecutive_primes[0])
      end
    end
  end
  puts consecutive_primes[1]*consecutive_primes[2]
end

quadratic