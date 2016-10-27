class Timer
  #write your code here
  attr_accessor :seconds
  
  def initialize
    @seconds = 0
  end
  
  def pad_with_0 dd
    dd.to_s.rjust 2, "0"
  end
  
  def time_string
    
    seconds_in_minute = 60
    minutes_in_hour = 60
    
    seconds_in_hour = minutes_in_hour * seconds_in_minute
    
    hours = @seconds / (seconds_in_hour)
    minutes_and_seconds = @seconds - hours * seconds_in_hour
    
    minutes = minutes_and_seconds / seconds_in_minute
    seconds_left = minutes_and_seconds - minutes * seconds_in_minute
    
    (pad_with_0 hours) + ":" + (pad_with_0 minutes) + ":" + (pad_with_0 seconds_left)
  end
end
