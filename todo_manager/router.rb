# Routes the user to the correct controller action
class Router
  def initialize(controller)
    @controller = controller
  end

  def run
    loop do
      puts "What do you want to do?"
      puts "1 - Add a task"
      puts "2 - List all tasks"
      puts "3 - Mark a task as completed"
      print '> '
      choice = gets.chomp.to_i

      if choice == 1
        @controller.add_task
      elsif choice == 2
        @controller.list_tasks
      elsif choice == 3
        @controller.mark_task
      else
        puts "Invalid option! >=("
      end
    end
  end
end
