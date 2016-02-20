#!/usr/bin/env ruby

string = 'This is a string to practice with'
puts string.downcase
puts string.capitalize
puts string.upcase
puts string.sub('string', "'string'")
puts "The string '#{string.downcase}' has #{string.length} characters"
puts string.reverse.downcase
puts string.sub(string, 'practice practice practice!')
