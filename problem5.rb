# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

def nok(a, b)#lcm
    return a * b / a.gcd(b) #nod
end

d = 1
for i in 2..21 #last i=20
    d = nok(d, i)
end    
puts d