# Starting with the number 1 and moving to the right in a clockwise direction a 5 by 5 spiral is formed as follows:

# 21 22 23 24 25
# 20  7  8  9 10
# 19  6  1  2 11
# 18  5  4  3 12
# 17 16 15 14 13

# It can be verified that the sum of the numbers on the diagonals is 101.

# What is the sum of the numbers on the diagonals in a 1001 by 1001 spiral formed in the same way?

require 'pry'

def bottom_left(square)
  ring = (square+1)/2
  a = (square**2)
  b = (ring-1)*4
  blc = (a - b)
end

def top_right(square)
  trc = square**2
end

def find_corners(ring)
  square = (ring*2)-1
  tr = top_right(square)
  tl = tr - square + 1
  bl = tl - square + 1
  br = bl - square + 1
  ring_corner_sum = tr + tl + bl + br
end

def loop_through(square)
  ring = (square+1)/2
  total = (2..ring).inject(0) { |sum, num| sum + find_corners(num) }
  puts total + 1 # account for skipping the innermost ring
end

loop_through(1001)

# 669171001
