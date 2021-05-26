# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

# Find the largest palindrome made from the product of two 3-digit numbers.
def isPalindrome(num)
    reversed =0
    temp=num
    while temp>0
        last_digit=temp%10#extract the last digit
        reversed=reversed*10+last_digit#add last digit
        temp=Integer(temp/10)#remove last digit
    end 
    num===reversed
end 
 
def largestPalindrome
    arr = []
     (100..999).each do |i|
         (100..999).each do |j|
            mul=j*i
            arr<<j*i if isPalindrome(mul) 
        end    
    end    
    arr.max 
end    
puts largestPalindrome