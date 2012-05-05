# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13,
# we can see that the 6th prime is 13.

# What is the 10,001st prime number?

a = [2]
b = 3

while a.length <10000

# Takes 'b' as the current number, checks to see if
# it is prime, and stores it in 'a' if true.

	c = []
	d = []
	
	a.each do |i|
		d << i
		c << b if b%i != 0
		break if i >= Math.sqrt(b)
	end
	
	a << b if c.length == d.length
	
	b += 1

end

p a.last

