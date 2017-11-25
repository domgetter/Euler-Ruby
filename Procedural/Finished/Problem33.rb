
# denominator 10..99
# generate a numerator which shares at least one digit
# so for 32
# make 21, 22, 23, 24, 25, 26, 27, 28, 29
#      13, 23, 33, 43, 53, 63, 73, 83, 93
time = Time.now
def non_trivial_reduction?(a, b)
  return false if a > b
  return false if a % 10 == 0 || b % 10 == 0
  return false if a.to_s[0] == a.to_s[1] && b.to_s[0] == b.to_s[1]
  return false if a.to_s[0] != b.to_s[1] && a.to_s[1] != b.to_s[0]
  a.to_f / b.to_f == a.to_s[0].to_f / b.to_s[1].to_f || a.to_f / b.to_f == a.to_s[1].to_f / b.to_s[0].to_f
end

reductions = []
b = 10
while b < 99
  a = 10
  while a < 99
    if non_trivial_reduction?(a, b)
      reductions << [a, b]
    end
    a += 1
  end
  b += 1
end

#puts reductions.inspect

puts reductions.reduce(Rational(1, 1)) {|acc, e| acc * Rational(e[0], e[1])}
puts Time.now - time