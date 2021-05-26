# 215 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.

# What is the sum of the digits of the number 2**1000?

result = 0
 
number =2**1000
 
while (number > 0) 
    result += number % 10
    number /= 10
end
puts result