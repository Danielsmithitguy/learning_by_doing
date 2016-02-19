#There are 60 seconds in a minute
#There are 60 minutes in an hour
#There are 24 hours in a day
#There are 7 days in a week
#That means there are:
#  3600 seconds in an hour,
#  86400 seconds in an day,
#  604800 seconds in a week
#That means when you turn 20, you've been alive for 628992000 seconds,
#and if you make it to 100, you will have lived 3144960000 seconds. Make them count!'


seconds_in_min = 60
min_in_hour = 60
hours_in_day = 24
days_in_week = 7

puts "Their are #{ seconds_in_min } seconds in a minute"
puts "There are #{ min_in_hour } minutes in an hour"
puts "There are #{ hours_in_day } hours in a day"
puts "There are #{ days_in_week } days in a week"
puts "  #{ seconds_in_min * min_in_hour } seconds in an hour,"
puts "  #{ seconds_in_min * min_in_hour * hours_in_day } seconds in an day,"
puts "  #{ seconds_in_min * min_in_hour * hours_in_day * days_in_week } seconds in a week"
puts "That means when you turn 20, you've been alive for #{ ((seconds_in_min * min_in_hour * hours_in_day) * 365) * 20 } seconds"
puts "#and if you make it to 100, you will have lived #{((seconds_in_min * min_in_hour * hours_in_day) * 365) * 100 } seconds. Make them count!'"
