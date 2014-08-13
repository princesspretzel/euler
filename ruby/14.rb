# The following iterative sequence is defined for the set of positive integers:

# n → n/2 (n is even)
# n → 3n + 1 (n is odd)

# Using the rule above and starting with 13, we generate the following sequence:

# 13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
# It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.

# Which starting number, under one million, produces the longest chain?

# NOTE: Once the chain starts the terms are allowed to go above one million.

def collatz
  all_counts = []
  (1..1000000).each do |n|
    puts n
    count = 0
    until n == 1
      if n.even?
        n = n/2
      elsif n.odd?
        n = (3*n) + 1
      end
      count +=1
    end
    all_counts << count
  end
  all_counts.index(all_counts.max)+1
end

puts collatz

# 837799