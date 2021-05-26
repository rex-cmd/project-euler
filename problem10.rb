# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

# Find the sum of all the primes below two million.

BELOW=2000000
sum=0
def isPrime(num)
    (2..(Math.sqrt(num))).each do |i|
        return 0 if num%i==0 
    end 
    return 1   
end    

(2..BELOW).each do |i|
    sum+=i if isPrime(i)==1
end 
puts 'sum: '
puts sum

