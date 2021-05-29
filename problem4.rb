# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

# Find the largest palindrome made from the product of two 3-digit numbers.
def palindrome?(num)
    num.to_s.reverse.to_i == num
end 
 
def largest_palindrome
    arr = []
     (100..999).each do |i|
         (100..999).each do |j|
            mul=j*i
            arr<<j*i if palindrome?(mul) 
        end    
    end    
    arr.max 
end    
puts largest_palindrome
