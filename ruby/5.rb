# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
# It is unnecessary to multiply in the lower half since they are all encompassed by the doubles in the latter half

range = (11..20)
range.reduce(:lcm)

# 232792560

# This is the limit of how high the spnedba (smallest positive number that is evenly divisible by all of the numbers from 1 to 20) can be
# top = range.reduce(1, :*)

# top.downto(2520) do |i|
#   range.each do |j|
#     if i%j==0
#       true
#     else
#       false
#     end
#   end
# end
