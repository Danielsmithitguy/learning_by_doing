#!/usr/bin/env ruby

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

#puts "#{arr}"

arr.each { |a| print "#{a}" + "..." }
print "\nT-"
arr.reverse.each do |a|
  if a > 1 then
    print "#{a.to_s}, "
  else
    print "#{a.to_s}..."
  end
end
print "  BLASTOFF!\n"
puts "The last element is #{arr.last}"
puts "The first element is #{arr.first}"
puts "The third element is #{arr[2]}"
puts "The element with an index of 3 is #{arr[3]}"
puts "The second from last element is #{arr.last-1}"
print "The first four elements are '"
arr.each do |a|
  if a < 4 then
    print a.to_s + ', '
  end
  if a == 4 then
    print a.to_s
  end
end
puts "'\n"
arr.slice!(4..6)
print "If we delete 5, 6 and 7 from the array, we're left with ["
arr.each do |a|
  if a < 10
    print a.to_s + ','
  else
    print a.to_s + ']'
  end
end
print "\n"
arr.unshift(5)
print "If we add 5 at the beginning of the array, we're left with ["
arr.each do |a|
  if a < 10
    print a.to_s + ','
  else
    print a.to_s + ']'
  end
end
print "\n"
arr.push(6)
print "If we add 6 at the end of the array, we're left with ["
arr.each do |a|
  if  a == 6
    print a.to_s + "]"
  else
    print a.to_s + ","
  end
end
puts "\n"
arr.delete_if { |a| a < 9 }
puts "Only the elements #{arr} are > 8."
arr.clear
puts "If we remove all the elements, then the length of the array is #{arr.length}"


