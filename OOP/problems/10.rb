# Project Euler

# Problem 10

# The sum of the primes below
# 10 is 2 + 3 + 5 + 7 = 17.

# Find the sum of all the primes
# below two million.

load File.dirname(__FILE__) + '/../header.rb'
load File.dirname(__FILE__) + '/../func.rb'

sum = get_primes(2000000).inject(:+)

@answer = sum

load File.dirname(__FILE__) + '/../footer.rb'