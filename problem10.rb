# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

# Find the sum of all the primes below two million.

BELOW=2000000
sum=0
def isPrime(num)
    for i in 2..(Math.sqrt(num))
        if num%i==0 
            return 0
        end

    end 
    return 1   
end    

for i in 2..BELOW
    if isPrime(i)==1
        sum+=i
    end    
end 
puts 'sum: '
puts sum

