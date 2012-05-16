# Project Euler

# Problem 1

# If we list all the natural numbers below
# 10 that are multiples of 3 or 5, we get 3,
# 5, 6 and 9. The sum of these multiples is
# 23.
# 
# Find the sum of all the multiples of 3 or 5
# below 1000.

load File.dirname(__FILE__) + '/../header.rb'

answer = 0

# takes each number from 1 and 999, checks
# divisibilty by 3 or 5, and adds it to b

(1...1000).each {|i| answer += i if (i%3 == 0 || i%5 == 0)}

# outputs answer

@answer = answer

load File.dirname(__FILE__) + '/../footer.rb'