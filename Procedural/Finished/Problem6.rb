# The sum of the squares of the first ten natural numbers is,
# 1^2 + 2^2 + ... + 10^2 = 385

# The square of the sum of the first ten natural numbers is,
# (1 + 2 + ... + 10)^2 = 55^2 = 3025

# Hence the difference between the sum of the squares of the
# first ten natural numbers and the square of the sum is
# 3025 - 385 = 2640.

# Find the difference between the sum of the squares of the
# first one hundred natural numbers and the square of the sum.

a = 0
b = 0

# Iterates through each integer and the sum of the squares
# into 'a' and stores the sum into 'b'.

1.upto(100) do |i|
	a += i**2
	b += i
end

# Outputs the square of the sum minus the sum of the squares.

p b**2 - a
