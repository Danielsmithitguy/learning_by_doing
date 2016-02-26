#!/usr/bin/env ruby

def count(x)
  if x >= 1
    return x
  elsif
    x < 1
    return 0
  end
end

starting_amount = 100
while starting_amount >= 0
  if starting_amount >= 3
    puts "#{count(starting_amount)} bottles of beer on the wall, #{count(starting_amount)} bottles of beer."
    puts "Take one down and pass it around, #{count(starting_amount)- 1} bottles of beer on the wall."
    puts ""
  elsif starting_amount == 2
    puts "#{count(starting_amount)} bottles of beer on the wall, #{count(starting_amount)} bottles of beer."
    puts "Take one down and pass it around, #{count(starting_amount)- 1} bottle of beer on the wall."
    puts ""
  elsif starting_amount == 1
    puts "#{count(starting_amount)} bottles of beer on the wall, #{count(starting_amount)} bottles of beer."
    puts "Take one down and pass it around, no more bottles of beer on the wall."
    puts ""
  else
    puts 'No more bottles of beer on the wall, no more bottles of beer.'
    puts 'Go to the store and buy some more, 99 bottles of beer on the wall.'
    puts ""
  end
  starting_amount -= 1
end


