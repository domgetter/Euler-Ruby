# Project Euler

# Problem 5

# 2520 is the smallest number that can be divided by each of the
# numbers from 1 to 10 without any remainder.

# What is the smallest positive number that is evenly divisible
# by all of the numbers from 1 to 20?

t = Time.new
a = 1
loop do
  break if (a%20==0 && a%19==0 && a%18==0 && a%17==0 && a%16==0 && a%15==0 && a%14==0 && a%13==0 && a%12==0 && a%11==0 && a%10==0 && a%9==0 && a%8==0 && a%7==0 && a%6==0 && a%5==0 && a%4==0 && a%3==0 && a%2==0 && a%1==0)
  a += 1
end

answer = a

puts "\n\tThe answer is: #{answer}"
puts "\n\tThis script took approximately #{(Time.now - t).round(9)} seconds to complete."

# ^^ This takes ~25 seconds