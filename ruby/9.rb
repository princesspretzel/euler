# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
# a^2 + b^2 = c^2
# For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

def pyth
  product = 0
  (1..998).each do |b| 
    bsq = b**2
    (1...b).each do |a| #a must be less than b
      asq = a**2
      csq = asq + bsq
      c = Math.sqrt(csq)
      if c%1===0 && (a+b+c)===1000
        product = a*b*c
      end
    end
  end
  product.to_i
end

puts pyth

# 31875000
