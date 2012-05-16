# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13,
# we can see that the 6th prime is 13.

# What is the 10,001st prime number?


load File.dirname(__FILE__) + '/../header.rb'
load File.dirname(__FILE__) + '/../func.rb'

a = [2]
b = 3

while a.length <= 10000

# Takes 'b' as the current number, checks to see if
# it is prime, and stores it in 'a' if true.

  a << b if b.is_prime?
  
	b += 1

end

@answer = a.last

load File.dirname(__FILE__) + '/../footer.rb'