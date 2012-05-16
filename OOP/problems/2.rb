#Problem 2

load File.dirname(__FILE__) + '/../header.rb'
load File.dirname(__FILE__) + '/../func.rb'

# Stores the Fibonacci numbers smaller than 4000000 into an array named array_of_fibs
array_of_fibs = get_fib(4000000)
sum = 0

#Adds up all even-valued Fibonacci terms into sum
array_of_fibs.each do |i|
	sum += i if i%2==0
end

#Stores sum into @answer for output
@answer = sum

load File.dirname(__FILE__) + '/../footer.rb'
