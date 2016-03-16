#!/usr/bin/env ruby

class Toaster
  def toasted? (toast_in)
    if toast_in == 1
      return true
    else
      return false
    end
  end

  def pluged_in? (state)
    if state == 1
      return true
    else
      return false
    end
  end

  def currently_in_use? (state)
    if state == 1
      return false
    else
      return true
    end
  end
end
