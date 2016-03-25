#!/usr/bin/env ruby

number_of_seconds_in_minute = 60
min_in_hour = 60
hours_in_day = 24
days_in_week = 7
seconds_alive_at_100 = ((number_of_seconds_in_minute * min_in_hour * hours_in_day) * 365) * 100
seconds_alive_at_20 = ((number_of_seconds_in_minute * min_in_hour * hours_in_day) * 365) * 20

puts "There are #{number_of_seconds_in_minute} seconds in a minute"
puts "There are #{min_in_hour} minutes in an hour"
puts "There are #{hours_in_day} hours in a day"
puts "There are #{days_in_week} days in a week"
puts "That means there are:"
puts "  #{number_of_seconds_in_minute * min_in_hour} seconds in an hour,"
puts "  #{number_of_seconds_in_minute * min_in_hour * hours_in_day} seconds in an day,"
puts "  #{number_of_seconds_in_minute * min_in_hour * hours_in_day * days_in_week} seconds in a week"
puts "That means when you turn 20, you've been alive for #{seconds_alive_at_20} seconds,"
puts "and if you make it to 100, you will have lived #{seconds_alive_at_100} seconds. Make them count!"

