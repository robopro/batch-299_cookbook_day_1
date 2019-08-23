# Controls the user action flow
require_relative 'task'

class Controller
  def initialize(view, repository)
    @view = view
    @repository = repository
  end

  # BEHAVIOR - User Actions
  def add_task
    # 1. Get title from the view
    title = @view.ask_for_title
    # 2. Create a task
    task = Task.new(title)
    # 3. Give task to repository
    @repository.add(task)
  end

  def list_tasks
    # 1. Get tasks from repository
    tasks = @repository.tasks
    # 2. Ask the view to print all the tasks
    @view.display_tasks(tasks)
  end

  def mark_task
    # 1. Ask for index through the view
    index = @view.ask_for_index
    # 2. Get task at index from repository
    task = @repository.find(index)
    # 3. Mark the task as completed
    task.complete
  end
end
