# Abstract representation of the object/thing we want to manipulate
class Task
  attr_reader :title

  # STATE
  def initialize(title)
    @title = title
    @completed = false
  end

  # BEHAVIOR
  def complete
    @completed = true
  end

  def completed?
    @completed
  end
end
