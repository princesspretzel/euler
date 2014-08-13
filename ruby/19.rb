# WORK IN PROGRESS

# You are given the following information, but you may prefer to do some research for yourself.

# 1 Jan 1900 was a Monday.
# Thirty days has September,
# April, June and November.
# All the rest have thirty-one,
# Saving February alone,
# Which has twenty-eight, rain or shine.
# And on leap years, twenty-nine.
# A leap year occurs on any year evenly divisible by 4, but not on a century unless it is divisible by 400.
# How many Sundays fell on the first of the month during the twentieth century (1 Jan 1901 to 31 Dec 2000)?

months = [[1,31],[2,28],[3,31],[4,30],[5,31],[6,30],[7,31],[8,31],[9,30],[10,31],[11,30],[12,31]]
days = 0
month_start_day = 1
first_of_the_month_sunday = 0

(1900...2000).each do |y|
  if (y % 4 == 0) && (y != 1900)
    months.map { |x| x[0]==2 ? 29 : x[1]}
  end
  days = month_start_day 
  months.each do |m|
    days = days + m[1]
    month_start_day = days % 7
    if month_start_day
      first_of_the_month_sunday +=1
    end
    month_start_day
  end
end