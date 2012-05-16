# Project Euler

# Problem 9

# A Pythagorean triplet is a set of three
# natural numbers, a < b < c, for which,
# a^2 + b^2 = c^2

# For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.

# There exists exactly one Pythagorean
# triplet for which a + b + c = 1000.

# Find the product a*b*c.

load File.dirname(__FILE__) + '/../header.rb'

a = 1
answer = 1

a.upto(1000).each do |i|

  b = i + 1

  b.upto(1000-a).each do |j|
  
    c = j + 1

    c.upto(1000-(a+b)).each do |k|

      if ((i**2+j**2)==k**2)
        answer = i*j*k if i*j*k>answer && i+j+k==1000
      end
      
      break if k**2 > (i**2+j**2)

    end
    
  end
  
end

@answer = answer

load File.dirname(__FILE__) + '/../footer.rb'