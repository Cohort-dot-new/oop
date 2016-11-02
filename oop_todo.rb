require_relative "list"
require_relative "task"

# Create list
list = List.new

# Create tasks and add them to the list
list.add_task(Task.new("Feed the cat", 1))
list.add_task(Task.new("Take out trash", 4))
list.add_task(Task.new("Mow the lawn", 2))

puts "~" * 50
p list.sort_by_priority
puts "~" * 50

# Print out the second task in the list
puts "Second task:"
puts list.tasks[1].name
puts "---------"

# Get an array containing the names of all incomplete tasks from the list
puts "Incomplete Tasks:"
puts list.incomplete_task_names
puts "--------"








# Mark the first task from the list as complete
list.tasks[0].complete!

# Print out the incomplete tasks again
puts "Incomplete Tasks:"
puts list.incomplete_task_names


puts "Number of incomplete tasks is " + list.number_of_incomplete_tasks.to_s
p list.tasks
list.delete_complete_tasks
p list.tasks
p list.tasks.length

