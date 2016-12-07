# Starting in the top left corner of a 2×2 grid, and only being able to move to the right and down, there are exactly 6 routes to the bottom right corner.
# How many such routes are there through a 20×20 grid?

next_pascal = lambda {|row| ([0] + row).zip(row + [0]).collect { |a, b| a + b } }

def pascals_triangle_at(step_number)
  row = [1]
  step_number.times do
    row = next_pascal.(row)
  end
  row
end

def total_lattice_paths(grid_size)
  pascals_triangle(grid_size * 2).max
end

#for a 20x20 grid there are....
total_lattice_paths(20)

