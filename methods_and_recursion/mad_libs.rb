#!/usr/bin/env ruby

#Adjective x 3
#nonu x 3
#plural_noun x 4
#game x 1
#verb ending in ing x 4
#part of the body
#a place
#adjective
#number

def ask(current_word)
    case current_word
      when 'adjective'
        puts 'give me a adjective:'
        gets.chomp
      when 'noun'
        puts 'give me a noun:'
        gets.chomp
      when 'plural noun'
        puts 'give me a plural_noun:'
        gets.chomp
      when 'game'
        puts 'give me a game:'
        gets.chomp
      when 'verb ending in ing'
        puts 'give me a verb ending in ing:'
        gets.chomp
      when 'body part'
        puts 'give me a body part:'
        gets.chomp
      when 'place'
        puts 'give me a place:'
        gets.chomp
      when 'adjective'
        puts 'give me a adjective:'
        gets.chomp
      when 'number'
        puts 'give me a number'
        gets.chomp
      when 'plant'
        puts 'give me a plant'
        gets.chomp
    end
end

puts "A vacation is when you take a trip to some #{ask('adjective')} "   \
  "place with your #{ask('adjective')} "                                 \
  "family. Usually you go to some place that is near a/an #{ask('noun')} "\
  "or up on a/an #{ask('noun')}." \
  "A good vacation place is one where you can ride #{ask('plural noun')}" \
  "or play #{ask('game')}"\
  " or go hunting for #{ask('plural noun')}." \
  " I like to spend my time #{ask('verb ending in ing')} or #{ask('verb ending in ing')}. " \
  "When parents go on a vacation, they spend their time eating three #{ask('plural noun')}" \
  " a day, and fathers play golf, and mothers sit around #{ask('verb ending in ing')}." \
  " Last summer, my little brother fell in a/an #{ask('noun')}" \
  " and got poison #{ask('plant')} all over his #{ask('body part')}."\
  " My family is going to go to (the) #{ask('place')}"\
  ", and I will practice #{ask('verb ending in ing')}."\
  " Parents need vacations more than kids because parents are always very #{ask('adjective')}" \
  " and because they have to work #{ask('number')} " \
  " hours every day all year making enough #{ask('plural noun')} to pay for the vacation."
