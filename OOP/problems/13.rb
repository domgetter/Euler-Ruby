# Project Euler

# Problem 13

# Work out the first ten digits of the sum of the
# one-hundred 50-digit numbers found in 13.txt.

load File.dirname(__FILE__) + '/../header.rb'
load File.dirname(__FILE__) + '/../func.rb'

file = File.new(File.dirname(__FILE__) + '/../13.txt', 'r')

sum = 0

file.each_line do |line|

  sum += line.to_i

end

@answer = sum.to_s[0,9]

load File.dirname(__FILE__) + '/../footer.rb'