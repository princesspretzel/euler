# Using names.txt (right click and 'Save Link/Target As...'), a 46K text file containing over five-thousand first names, begin by sorting it into alphabetical order. Then working out the alphabetical value for each name, multiply this value by its alphabetical position in the list to obtain a name score.

# For example, when the list is sorted into alphabetical order, COLIN, which is worth 3 + 15 + 12 + 9 + 14 = 53, is the 938th name in the list. So, COLIN would obtain a score of 938 × 53 = 49714.

# What is the total of all the name scores in the file?

require 'csv'
require 'pry'

names = []
CSV.foreach("p022_names.txt") do |name|
  names = name
end
names.sort!
alphabet = ("A".."Z").to_a
scores = []
names.each_with_index do |x, idx|
  sum = x.split("").map{|y| alphabet.index(y) + 1}.reduce(:+)
  score = sum * (idx + 1)
  scores << score
end
puts scores.reduce(:+)

# 871198282