# WORK IN PROGRESS

# If the numbers 1 to 5 are written out in words: one, two, three, four, five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.

# If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many letters would be used?

# NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and forty-two) contains 23 letters and 115 (one hundred and fifteen) contains 20 letters. The use of "and" when writing out numbers is in compliance with British usage.
require 'pry'

irregular_double_digits_below_twenty = {
  10 => 3,
  11 => 6,
  12 => 6,
  13 => 8,
  14 => 8,
  15 => 7,
  16 => 7,
  17 => 9,
  18 => 8,
  19 => 8
}

tens = {
  0 => 3, # "and"
  2 => 6,
  3 => 6,
  4 => 5,
  5 => 5,
  6 => 5,
  7 => 7,
  8 => 6,
  9 => 6
}

ones = {
  0 => 0, # taken care of by tens
  1 => 3,
  2 => 3,
  3 => 5,
  4 => 4,
  5 => 4,
  6 => 3,
  7 => 5,
  8 => 5,
  9 => 4
}

def double_digits(ones, irregular_double_digits_below_twenty, tens)
  total = 0
  (1..1000).each do |num|
    num = num.to_s.split("").map(&:to_i)
    case num.length
    when 1
      total = total + ones[num.first]
    when 2 && (num.join("").to_i < 20)
      total = total + irregular_double_digits_below_twenty[num]
    when 2 && (num.join("").to_i >= 20)
      tens_place = num[0]
      ones_place = num[1]
      total = total + ones[ones_place] + tens[tens_place]
    when 3
      hundreds_place = num[0]
      if num[1] = 1
        ones_place = num[2]
        nums = []
        nums << num.pop
        nums << num.pop
        nums = nums.reverse.join.to_i
        total = total + irregular_double_digits_below_twenty[nums] + (ones[hundreds_place] + 10) # + 10 is for "hundred and"
      else
        tens_place = num[1]
        ones_place = num[2]
        total = total + ones[ones_place] + tens[tens_place] + (ones[hundreds_place] + 10) # + 10 is for "hundred and"
      end
    else
      total = total + "onethousand".length
    end
  end
  puts total
end

double_digits(ones, irregular_double_digits_below_twenty, tens)

# WRONG: 19937