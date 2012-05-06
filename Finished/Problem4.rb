# Project Euler

# Problem 4

# A palindromic number reads the same both ways.
# The largest palindrome made from the product
# of two 2-digit numbers is 9009 = 91 × 99.

# Find the largest palindrome made from the
# product of two 3-digit numbers.

class Fixnum
	def is_pal?
		self.to_s.reverse.to_i == self
	end
end

a = 100..999
b = 0

a.each do |i|
	(i..999).each do |j|
		c = i*j
		# Hold the new product in b if it is bigger than the old product and it is a palindrome
		b = c if c > b && c.is_pal?
	end
end

p b