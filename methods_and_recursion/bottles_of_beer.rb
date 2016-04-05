#!/usr/bin/env ruby

def bottles
  puts "#{@count} bottles of beer on the wall, #{@count} bottles of beer."
  puts "Take one down and pass it around, #{@count - 1} bottles of beer on the wall.\n"
end

def bottle
  puts "#{@count} bottles of beer on the wall, #{@count} bottles of beer."
  puts "Take one down and pass it around, #{@count - 1} bottle of beer on the wall.\n"
end

def go_to_store
  puts "No more bottles of beer on the wall, no more bottles of beer.\n" \
     "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
end

def last_count
  puts "#{@count} bottles of beer on the wall, #{@count} bottles of beer."
  puts "Take one down and pass it around, no more bottles of beer on the wall.\n"
end

def bottles_of_beer(count)
  @count = count
  if count >= 3
    bottles
  elsif count == 2
    bottle
  elsif count == 1
    last_count
  elsif
    go_to_store
  else
    return 0
  end
  bottles_of_beer(count - 1)
end

bottles_of_beer(100)
