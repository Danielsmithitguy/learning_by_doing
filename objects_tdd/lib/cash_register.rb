# is a cashRegister
class CashRegister
  attr_reader :total

  def initialize
    @total = 0
  end

  def add(number)
    @total += number
  end

  def subtract(number)
    @total -= number
  end

  def pay(number)
    if number < @total
       @total -= number
    else
      @total -= number
      change = @total.abs
      @total = 0
      change
    end
  end
end
