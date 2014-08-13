# WORK IN PROGRESS

# Starting in the top left corner of a 2×2 grid, and only being able to move to the right and down, there are exactly 6 routes to the bottom right corner.

# How many such routes are there through a 20×20 grid?

def grid(grid_down, grid_right)
  (0..grid_down).each do |num|
    (0..grid_right).each do |num|
      paths = grid((grid_down + 1), grid_right) + grid(grid_down, (grid_right + 1))
    end
  end
  puts paths
end

grid(20, 20)