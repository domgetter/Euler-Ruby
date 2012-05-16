# Starting in the top left corner of a 2×2 grid,
# there are 6 routes (without backtracking) to the
# bottom right corner.

# How many routes are there through a 20×20 grid?

load File.dirname(__FILE__) + '/../header.rb'
load File.dirname(__FILE__) + '/../func.rb'

@answer = (40).choose(20)

load File.dirname(__FILE__) + '/../footer.rb'