# Project Euler

# Problem 3

# The prime factors of 13195 are
# 5, 7, 13 and 29.

# What is the largest prime factor
# of the number 600851475143 ?

a = 600851475143
b = 1
c = []

while b <= a/2
	
	b += 1
	
	# Finds prime factors
	if a%b == 0
		
		c << b
		c.each do |i|
			
			# If b is divisible by any member of c, don't add it in
			c.delete(b) if (b%i == 0 && b != i)
		end
	end
end

# Outputs largest prime factor
puts c.pop