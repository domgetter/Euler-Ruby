# Project Euler

# Problem 5

# 2520 is the smallest number that can be divided by each of the
# numbers from 1 to 10 without any remainder.

# What is the smallest positive number that is evenly divisible
# by all of the numbers from 1 to 20?

class Integer

  def get_factors
    array = []
    1.upto(self) do |i|
      array << i if self%i==0
    end
    return array
  end
  
  def get_prime_factors
    array = []
    tree = []
    counts = {}
    unless self == 1
      2.upto(self) do |i|
        if self%i==0
          tree << i
          (self/i).get_prime_factors[0].each do |j|
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
      2.upto(self) do |i|
        counts[i] = array.count(i)
      end
    end
    return [array, counts]
  end
  
end

t = Time.new

hash = {}

(1..20).each do |i|
  hash.merge!(i.get_prime_factors[1]) do |key,old,new|
    if old > new
      old
    else
      new
    end
  end
end

product = 1

hash.each do |k,v|

  unless v == 0
    1.upto(v) do |i|
      product *= k
    end
  end

end

puts "\n\tThe answer is: #{product}"
puts "\n\tThis script took approximately #{(Time.now-t).round(3)} seconds to complete."

# ^^ This takes ~0.001 seconds