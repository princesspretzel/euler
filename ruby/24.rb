# A permutation is an ordered arrangement of objects. For example, 3124 is one possible permutation of the digits 1, 2, 3 and 4. If all of the permutations are listed numerically or alphabetically, we call it lexicographic order. The lexicographic permutations of 0, 1 and 2 are:

# 012   021   102   120   201   210

# What is the millionth lexicographic permutation of the digits 0, 1, 2, 3, 4, 5, 6, 7, 8 and 9?

def get_chunks
  digits = []
  total_count = (1..10).inject(:*)
  chunk = (total_count / 10)
  if !digits.empty?
    digits.each do |x|
      chunk = chunk / x
    end
  end
  digits << get_next_digit(chunk)
  puts digits.flatten
end

def get_next_digit(chunk)
  count = 0
  sub_total = 0
  while sub_total < 1000000
    sub_total += chunk
    count += 1
  end
  count
end

get_chunks

# WRONG: 3