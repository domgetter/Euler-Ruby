#list.rb

# List the problems like this:

# ┌─────────────┬──────────┬─────┐
# │ Problem No. │ Finished │ Doc │
# ├─────────────┼──────────┼─────┤
# │      2      │    X     │  X  │
# ├─────────────┼──────────┼─────┤
# │      3      │    X     │     │
# ├─────────────┼──────────┼─────┤
# │      4      │          │  X  │
# ├─────────────┼──────────┼─────┤
# │      5      │    X     │  X  │
# └─────────────┴──────────┴─────┘

puts "\n  ┌─────────────┬──────────┬─────┐"
puts   "  │ Problem No. │ Finished │ Doc │"

rbfiles = File.join("problems","*.rb")
rbdocfiles = File.join("doc","*.rb")
list = Dir.glob(rbfiles)
doclist = Dir.glob(rbdocfiles)

list.each do |i|
  item = i[9]
  doc = false
  doc = true if doclist.include?("doc/#{i[9]}#{i[10]}#{i[11]}#{i[12]}")
  puts   "  ├─────────────┼──────────┼─────┤"
  print "  │      #{item}      │    X     │  "
  if doc
    print "X"
  else
    print " "
  end
  puts"  │"
end

puts "  └─────────────┴──────────┴─────┘"