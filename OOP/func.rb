class Integer

	def is_pal?
  # Returns Boolean
  # Checks to see if a positive integer is read the same forward and backaward
  # ex: 99.is_pal>  => true
  #     100.is_pal? => false
    if self >= 0
      self.to_s.reverse.to_i == self
    else
    # Throw Domain Error
      false
    end
	end

	def is_prime?
  # Returns Boolean
	# This checks whether or not a positive integer is prime.
	# ex. 2.is_prime? => true
	#	    8.is_prime? => false
    if self >= 2
      primeness = true
      2.upto(Math.sqrt(self)) do |i|
        if self%i==0
          primeness=false
          break
        end
      end
      primeness
    else
    # Throw Domain Error
      false
    end
	end

  def get_factors
  # Returns Array
  # This generates a sorted array of a numbers factors, including 1 and the number
  # ex:  7.get_factors  => [1,7]
  #      12.get_factors => [1,2,3,4,6,12]
    array = []
    1.upto(Math.sqrt(self)) do |i|
      if self%i==0
        array << i
        array << self/i
      end
      
    end
    return array.sort.uniq
  end
  
  def get_prime_factors
  # Returns Array
  # This takes in an integer and returns an array of its prime factors including repetion
  # ex:  24.get_prime_factors => [2,2,2,3]
    array = []
    tree = []
    unless self == 1
      2.upto(self) do |i|
        if self%i==0
          tree << i
          (self/i).get_prime_factors.each do |j|
            tree << j
          end
          break
        end
      end
      if array.empty?
        tree.each do |i|
          array << i
        end
      end
    end
    array
  end
  
end

class Array

  def lcm
  # Returns Integer
  # Finds the least common multiple of an array of numbers
  # ex: [24,30].lcm => 120
    hash = {}
    temp = {}

    self.each do |i|
      array = i.get_prime_factors
      set = array.uniq
      set.each do |j|
        temp[j] = array.count(j)
      end
      hash.merge!(temp) {|k,o,n| o>n ? o : n}
    end

    product = 1

    hash.each do |k,v|
      unless v == 0
        1.upto(v) do |i|
          product *= k
        end
      end
    end
    product
  end

end

def get_fib(a,b=true)
# Returns Array
# Generates all the Fibonacci numbers up to the number in question
# If second arg is false, then it generates the number of fib numbers you specified
# Returns an array of the fibonacci numbers
# ex. get_fib(10)		 => [1,1,2,3,5,8]
#	get_fib(10, false) => [1,1,2,3,5,8,13,21,34,55]
	if a.class != (Fixnum or Bignum) || a < 1
		puts "#{a} (#{a.class}) is not a valid input for get_fib.  It must be an integer of 1 or greater.  Please refer to func.rb for documentation on the use of this function."
		gets
		[]
	else
		m = 1
		n = 1
		c = [1]
		if b
      while n < a
        c << n
        n += m
        m = n - m
      end
		else
      while c.length < a
        c << n
        n += m
        m = n - m
      end
		end
		c
	end
end

def get_primes(a,b=true)
# Returns Array
# Generates all the prime numbers up to the number in question
# If second arg is false, then it generates the number of prime numbers you specified
# Returns an array of the prime numbers
# ex. get_primes(10)		 => [2,3,5,7]
#	get_primes(10, false)  => [2,3,5,7,11,13,17,19,23,29]

		list_of_primes = [2]
		2.upto(a) do |current_number|
			
			primeness = true
		
			# check if divisible by any member in the array, then add to array if exhausted
			# if it is divisible at any time, break, and check the next number.
			
			list_of_primes.each do |current_known_prime|
			
				if current_number%current_known_prime == 0
					primeness = false
					break
				end
				
				if current_known_prime>Math.sqrt(current_number)
				
					break
				end
				
			
			end
			
			if (primeness)
			list_of_primes << current_number
			end
		end
		list_of_primes
	end