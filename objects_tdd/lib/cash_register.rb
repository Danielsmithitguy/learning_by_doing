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
    @total -= number
    if @total < 0 
      change = @total.abs
      @total = 0
      return change
    end
  end
end
