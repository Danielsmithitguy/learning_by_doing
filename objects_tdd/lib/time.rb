class Time
  def initialize
    @time = 0.000
    @is_am = true
  end

  def time_passing(hours)
    @time += hours
    if @time > 24
      @time -= 24
    end
  end

  def current_time
    string = @time.to_s + ' hundred hours'
  end
end
