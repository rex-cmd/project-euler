# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

puts num=(2..21).inject(1){|x,i| x.lcm(i)}  
 
