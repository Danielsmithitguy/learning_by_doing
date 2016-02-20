#!/usr/bin/env ruby

seconds_in_min = 60
min_in_hour = 60
hours_in_day = 24
days_in_week = 7
interger_valid = false

#year =
#
#puts "what's your current age?"
#
#while interger_valid != true
#begin
#  current_age = gets.chomp
#  n = Integer(current_age)
#  puts n
#rescue ArgumentError
#  puts"not an interger! please try again."
#  interger_valid = false
#else
#  interger_valid = true
#end
#end

puts "There are #{seconds_in_min} seconds in a minute"
puts "There are #{min_in_hour} minutes in an hour"
puts "There are #{hours_in_day} hours in a day"
puts "There are #{days_in_week} days in a week"
puts "That means there are:"
puts "  #{seconds_in_min * min_in_hour} seconds in an hour,"
puts "  #{seconds_in_min * min_in_hour * hours_in_day} seconds in an day,"
puts "  #{seconds_in_min * min_in_hour * hours_in_day * days_in_week} seconds in a week"
#puts "That means at age #{current_age}, you've been alive for #{((seconds_in_min * min_in_hour * hours_in_day) * 365) * current_age.to_i} seconds"
puts "That means when you turn 20, you've been alive for #{((seconds_in_min * min_in_hour * hours_in_day) * 365) * 20} seconds,"
puts "and if you make it to 100, you will have lived #{((seconds_in_min * min_in_hour * hours_in_day) * 365) * 100} seconds. Make them count!"

#if year % 4 == 0
#  puts year % 4
#else year % 100 == 0
#  puts 'test2'
#end
