# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

d = 1
 (2..21).each do |i| #last i=20
    d=d.lcm(i)
end    
puts d