# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
# a2 + b2 = c2
# For example, 32 + 42 = 9 + 16 = 25 = 52.
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

def compute
    perimeter = 1000
    (1..(perimeter+ 1)).each do |a|
        ((a + 1)..(perimeter + 1)).each do |b|
            c = perimeter - a - b
            return (a * b * c).to_s if (a * a + b * b == c * c)
        end
    end
end    
puts compute