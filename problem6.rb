# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

sum1=0 
sum2=0
(0..101).each do |i|
    sum1+=i**2
    sum2+=i
end    
puts sum2**2-sum1