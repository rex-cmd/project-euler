# How many such routes are there through a 20×20 grid?
gridSize = 20
paths = 1
 
(0...gridSize).each do |i| 
    paths *= (2 * gridSize) - i;
    paths /= i + 1;
end
puts paths