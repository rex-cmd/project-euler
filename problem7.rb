# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

# What is the 10 001st prime number?


simple=[3]
number=3
count=3
while count<=10001
    number+=2
    simpleNuber=true
    simple.each do |i|
        break if number<i**2 #числа кратные i, начинают высчитывать с i(квадрат)   
        simpleNuber=false if number%i==0           
    end            
    if simpleNuber==true
        simple<<number
        count+=1
    end    
end        
puts simple[-1]