# Project Euler

# Problem 3

# The prime factors of 13195 are
# 5, 7, 13 and 29.

# What is the largest prime factor
# of the number 600851475143 ?

load File.dirname(__FILE__) + '/../header.rb'
load File.dirname(__FILE__) + '/../func.rb'

@answer = 600851475143.get_prime_factors.last

load File.dirname(__FILE__) + '/../footer.rb'