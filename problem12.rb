# What is the value of the first triangle number to have over five hundred divisors?
def number_of_divisors(number) 
    nod = 0
    (1..Math.sqrt(number)).each do |i|
      nod += 2 if number % i == 0
    end
    #Correction if the number is a perfect square
    nod-=1 if Math.sqrt(number)**2 == number
    nod
end
 
def problem
  number, i = 0, 1
  number, i = number+i, i+1 until number_of_divisors(number)>500
  number
end
puts problem