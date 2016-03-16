#!/usr/bin/env ruby


def bottles_of_beer (count)
  if count >= 3
    puts "#{count} bottles of beer on the wall, #{count} bottles of beer."
    puts "Take one down and pass it around, #{count- 1} bottles of beer on the wall."
    puts ""
  elsif count == 2
    puts "#{count} bottles of beer on the wall, #{count} bottles of beer."
    puts "Take one down and pass it around, #{count - 1} bottle of beer on the wall."
    puts ""
  elsif count == 1
    puts "#{count} bottles of beer on the wall, #{count} bottles of beer."
    puts "Take one down and pass it around, no more bottles of beer on the wall."
    puts ""
  elsif
    puts "No more bottles of beer on the wall, no more bottles of beer.\n" \
     'Go to the store and buy some more, 99 bottles of beer on the wall.'
    puts ""
  else
    return 0
  end
  bottles_of_beer(count-1)
end

bottles_of_beer(100)
