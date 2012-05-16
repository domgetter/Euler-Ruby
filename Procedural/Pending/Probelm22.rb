# Problem 22

# Using names.txt, a 46K text file containing over five-thousand first names,
# begin by sorting it into alphabetical order. Then working out the
# alphabetical value for each name, multiply this value by its alphabetical
# position in the list to obtain a name score.

# For example, when the list is sorted into alphabetical order, COLIN, which
# is worth 3 + 15 + 12 + 9 + 14 = 53, is the 938th name in the list. So, COLIN
# would obtain a score of 938 × 53 = 49714.

# What is the total of all the name scores in the file?

# Open the file, sotre the names in a string, split them into an array by the commas, sort them alphabetically, then delete quotation marks
b = File.open("names.txt", "r").gets.split(",").sort!.each {|name| name.delete!("\"")}

# Create a hash which corresponds letters of the alphabet to number a = 1, b = 2, ..., z = 26
a = {}
letter = "a"

until letter == "aa"
	a[letter.upcase] = a.length + 1
	letter.succ!
end
j = 1
h = 0

# for each name, add the letters of that name, then multiply the result by its position in the array, then add all name scores together
b.each do |name|
	m = 0
	name.each_char do |ch|
		m += a[ch]
	end
	h += m*j
	j += 1
end

#output total of name scores added up
puts h