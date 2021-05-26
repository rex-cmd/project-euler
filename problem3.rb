# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143 ?
require 'prime'

n = 600851475143
answer=[]
Prime.each do |prime|
  break prime if n == 1 
  next unless n % prime == 0
  n = n / prime
  answer<< prime
  redo
end
puts answer.max