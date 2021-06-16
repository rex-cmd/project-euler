# How many such routes are there through a 20×20 grid?
grid_size = 20

puts (0...grid_size).inject(1){|mem, i| mem * ((2*grid_size)-i)/(i+1)}