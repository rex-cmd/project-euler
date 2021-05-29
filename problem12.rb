# What is the value of the first triangle number to have over five hundred divisors?
def number_of_divisors(number) 
    nod = 0
    (1..Math.sqrt(number)).each do |i|
      nod += 2 if number % i == 0
    end
    #Correction if the number is a perfect square
    nod-=1 if Math.sqrt(number)**2 == number
    return nod
end
 
def problem
  number = 0
  i = 1
  while number_of_divisors(number) < 500
    number += i
    i+=1
  end
  return number
end
puts problem