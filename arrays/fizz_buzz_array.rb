#!/usr/bin/env ruby

count_array = []
count = 1
(1..100).each do
  if count % 3 == 0 && count % 5 == 0
    current_count = "FizzBuzz"
  elsif count % 5 == 0
    current_count = "Buzz"
  elsif count % 3 == 0
    current_count = "Fizz"
  else
    current_count = count
  end
  count += 1
  count_array.push(current_count.to_s)
end
puts count_array
