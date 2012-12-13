# Starting in the top left corner of a 2×2 grid,
# there are 6 routes (without backtracking) to the
# bottom right corner.

# What is the sum of the digits of the number 2^1000?

load File.dirname(__FILE__) + '/../header.rb'
load File.dirname(__FILE__) + '/../func.rb'

answer = (2**1000).to_s.each_char.inject {|sum, n| sum.to_i + n.to_i}

@answer = answer

load File.dirname(__FILE__) + '/../footer.rb'