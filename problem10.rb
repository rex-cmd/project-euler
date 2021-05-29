# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

# Find the sum of all the primes below two million.

require 'prime'
x=(2..2000000).inject{|sum, i| Prime.prime?(i) ? sum+i : sum }
puts 'sum: '
puts x

