# n the 5 by 5 matrix below, the minimal path sum from the top left to the
# bottom right, by only moving to the right and down, is indicated in bold red
# and is equal to 2427.

# Example here didn't format right...

# Find the minimal path sum, in matrix.txt (right click and "Save
# Link/Target As..."), a 31K text file containing a 80 by 80 matrix, from the
# top left to the bottom right by only moving right and down.

# Start from bottom-right
# Traverse all the way up, then all the way over,
# Then traverse all the way up -1, then all the way over
# Etc...
# Through the middle, zig-zag,
# Until you are traversing all the way over, then all the way up
# Collect each path sum in an array
# Array.min

require 'csv'
require 'pry'

class Cell
  attr_accessor :row, :column, :value

  def initialize(options={})
    @row = options[:row]
    @column = options[:column]
    @value = options[:value]
  end

  def vertical
    return if column == 79
    Cell.new({row: row, column: column+1, value: $matrix[row][column+1]})
  end

  def horizontal
    return if row == 79
    Cell.new({row: row+1, column: column, value: $matrix[row+1][column]})
  end
end

$memo = {[79,79] => 7981}
def path_from(cell)
  return unless cell
  $memo[[cell.row, cell.column]] ||= cell.value + [path_from(cell.vertical),
                                                    path_from(cell.horizontal)].compact.min
end

$matrix = []
CSV.foreach("p081_matrix.txt") do |row|
  $matrix << row.map!(&:to_i)
end

puts path_from( Cell.new({row: 0, column: 0, value: $matrix[0][0]}))
