class Task
  
  def initialize(input_name, input_priority)
    @name = input_name
    @complete = false
    @priority = input_priority
  end

  def name
    return @name
  end

  def complete
    return @complete
  end

  def priority
    return @priority
  end

  def complete!
    @complete = true
  end

  def toggle_complete
    @complete = !@complete
  end
end
