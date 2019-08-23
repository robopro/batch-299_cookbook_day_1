# Input from and output to the user.
# gets and puts

class View
  def ask_for_title
    puts "What is your task?"
    return gets.chomp
  end

  # 1. [ ] do the laundry
  # 2. [x] conquer the world

  def display_tasks(tasks)
    tasks.each_with_index do |task, index|
      x = task.completed? ? "x" : " "
      puts "#{index + 1}. [#{x}] #{task.title}"
    end
  end

  # Generic method name. We use generic text in our output,
  # so we can reuse our method in other contexts.
  def ask_for_index
    puts "Which number?"
    gets.chomp.to_i - 1
  end
end
