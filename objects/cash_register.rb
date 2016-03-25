#!/usr/bin/env ruby

# done
# This program should take a user input and either add or subtract from a running total.
# if user is paying off a running total and it goes bellow 0 it should give change back
# Should also output the current running total with each line
# user should only be allowed to input choice inputs and nothing outside of that
class CashRegister
  def initialize
    @currently_adding = true
    @running_total = 0.0
  end

  def getting_user_input
    gets.chomp
  end

  def user_output
    if @running_total > 0
      puts "Your current total is #{format_running_total} dollars"
    end
  end

  def format_running_total
    sprintf('%.2f', @running_total)
  end

  def quit
    if @running_total != 0
      puts "I can't exit right now, you still owe me #{format_running_total} dollars! D:"
    else
      puts 'Good bye!'
      exit
    end
  end

  def user_input(input)
    # should get user input and either add, subtract or exit the program
    # input can either be quit, checkout, add more items, a valid int, or not a valid int
    if input == 'quit' || input == 'q' || input == 'Q'
      quit
      # @currently_adding tells me if im checking out (false)
      # or currently paying (true) my total.
    elsif input == 'add more' || input == 'a' || input == 'A'
      @currently_adding = true
    elsif input == 'checkout' || input == 'c' || input == 'C'
      @currently_adding = false
    elsif valid_int?(input)
      # input is valid int, gsub used incase of type for , converting it to a . insted
      if @currently_adding
        # running total should increase with each input
        Adding_to_total(input)
      else
        # running total should decrease with each input, paying the total.
        # should also not go below 0 if payment causes total to go below 0
        # output change
        Subtract_from_total(input)
        if @running_total <= 0
          puts "Your change is #{@running_total.abs}."
          puts 'You may now leave the terminal by typing (Q)uit or feel free to add more things!'
          initialize
        end
      end
    else
      # not a valid input
      puts 'Not a valid number, did you want to  (C)heckout? or (A)dd more or (Q)uit?'
    end
  end

  def Subtract_from_total(input)
    @running_total -= input.to_f
  end

  def Adding_to_total(input)
    @running_total += input.to_f
  end
end

def valid_int?(input)
  # basic int sanitizer
  if input.include? '.'
    # chekcs to see if input is int, ie 3, 3 would return false because of float conversion below
  else
    input += '.0'
  end
  if input.end_with?('.')
    # checks to see if the input ends with . ex 3. would return false with out this
    input += '0'
  end
   # checkes for instances of value starting with . ie .5 or something lower then 1.
  if input.start_with?('.')
    input = '0' + input.to_s
  end
  puts input.to_s + " | #{input.to_f}"
  if input.to_s == input.to_f.to_s
    return true
  else
    return false
  end
end

x = CashRegister.new
puts 'Welcome! feel free to start adding prices to your cart!' \
         "\nwhen your finished just type (C)heckout or (Q)uit to exit."
while true
  x.user_output
  x.user_input(x.getting_user_input)
end