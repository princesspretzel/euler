# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

# Find the largest palindrome made from the product of two 3-digit numbers.

def largest_palindrome
  product_array = []
  999.downto(100).each do |i|
    999.downto(100).each do |j|
      product = i*j
      if check(product)==true
        product_array << product
      end
    end
  end
  product_array.max
end

def check(num)
  if num.to_s===num.to_s.reverse
    return true
  end
end

largest_palindrome

# 906609
