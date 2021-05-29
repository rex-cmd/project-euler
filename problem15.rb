# How many such routes are there through a 20×20 grid?
grid_size = 20
paths = 1
 
(0...grid_size).each do |i| 
    paths *= (2 * gridSize) - i
    paths /= i + 1
end
puts paths