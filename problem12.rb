# What is the value of the first triangle number to have over five hundred divisors?

def NumberOfDivisors(number) 
     nod = 0
    for i in 1..Math.sqrt(number)
        if number % i == 0
            nod += 2
        end
    end
    #Correction if the number is a perfect square
    if Math.sqrt(number)**2 == number
        nod-=1
    end
    return nod
end
 
 
def problem
  number = 0
  i = 1
  while NumberOfDivisors(number) < 500
    number += i
    i+=1
  end
  return number
end
puts problem