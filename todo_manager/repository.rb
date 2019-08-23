# Deals with storing and loading our model (tasks)
class Repository
  attr_reader :tasks
  #STATE
  def initialize
    # Array of Task objects
    @tasks = []
  end

  # BEHAVIOR - CRUD
  # Parameter task is an instance of Task class
  def add(task)
     @tasks << task
  end

  def find(index)
    return @tasks[index]
  end

  # Either a getter method, or an attribute reader.
  # def all
  #   return @tasks
  # end
end
