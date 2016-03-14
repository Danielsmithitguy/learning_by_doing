#!/usr/bin/env ruby

require_relative 'time'

#A simple tomagotchi pet, can eat, drink, and sleep.
#with every action time will increment an hour upto 8 depending on action
#The need for water, food, sleep will increase each hour unless said action was taken

class Pet
  def initialize
    foo
    pet_name
    @current_time = Time.new
    @max_hunger = 100
    @hunger = 0
    @max_thrist = 100
    @thrist = 0
    @max_sleep = 18
    @sleep = 0
    @is_alive = true
  end

  def pet_name (name)
    are_you_sure = false
    while are_you_sure == false
      puts "Welcome, what would you like to name your new pet?"
      puts "are you sure you want to name your pet #{name}?"
      puts "(Y)es/(N)o"
      are_you_sure = Yes_no?
    end
  end

  def foo
    gets.chomp
  end

  def Yes_no?
    response = gets.chomp.downcase
    if response == 'y' || response == 'yes'
      true
    else
      false
    end
  end

  def eat
    hours = 1
    @current_time.time_passing(hours)
    self.status(hours)
    @hunger -= @hunger
  end

  def drink
    hours = 1
    @current_time.time_passing(hours)
    self.status(hours)
    @thrist -= @thrist
  end

  def sleep
    hours = 8
    @current_time.time_passing(hours)
    self.status(hours)
    @sleep -= @sleep
  end

  def output
    puts "Pet Name : #{the_pets_name}"
    puts "current time is #{@current_time.current_time}"
    puts "Current Stats : Hunger - #{@hunger} | Thrist - #{@thrist} | Hours awake : #{@sleep}"
  end

  def status (hours)
    for i in 1..hours
      @hunger += 0.5
      if @hunger > @max_hunger
        @hunger = @max_hunger
      end
      @thrist += 0.5
      if @thrist > @max_thrist
        @thrist = @max_thrist
      end
      @sleep += 1
      if @sleep > @max_sleep
        @sleep = @max_sleep
      end
    end
  end


  def wait
    hours = 1
    @current_time.time_passing(hours)
    self.status(hours)
  end

end



pet = Pet.new
while true
  pet.output
  action = gets.chomp.downcase
  case action
    when 'e', 'eat'
      pet.eat
    when 's', 'sleep'
      pet.sleep
    when 'd', 'drink'
      pet.drink
    when 'w', 'wait'
      pet.wait
    when 'q', 'quit'
      puts "Are you sure you want to quit?"
      puts "(Y)es/(N)o"
      if pet.Yes_no?
        puts "Goodbye"
        exit
      end
    when 'h', 'help'
      puts "This is the help menu \n---------------------------"
      puts '(H)elp : You are here'
      puts '(E)at : Feed your pet!'
      puts "(D)rink: have #{the_pets_name} take a drink"
      puts "(S)leep : put #{the_pets_name} to sleep"
      puts "(W)ait : kill an hour"
      puts '(Q)uit : Goodbye!'
    else
      puts "Im not sure what you mean, try (H)elp for more options"
  end end

