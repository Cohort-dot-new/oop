class List

  def initialize
    @tasks = []
  end

  def tasks
    return @tasks
  end

  def add_task(task)
    @tasks << task
  end

  def incomplete_task_names
    task_names = []
    @tasks.each do |task|
      unless task.complete
        task_names << task.name
      end
    end
    return task_names
  end

  def number_of_incomplete_tasks
    # count = 0
    # @tasks.each do |task|
    #   if task.complete == false
    #     count += 1
    #   end
    # end
    # return count
    incomplete_task_names.count
  end

  def delete_complete_tasks
    # incomplete_tasks = []
    # @tasks.each do |task|
    #   if task.complete == false
    #     incomplete_tasks << task
    #   end
    # end
    # @tasks = incomplete_tasks

    # incomplete_tasks = []
    # @tasks.each { |task| incomplete_tasks << task if task.complete == false }
    # @tasks = incomplete_tasks

    # @tasks = @tasks.select { |task| task.complete == false }

    @tasks = @tasks.select { |task| !task.complete }

  end

  def sort_by_priority
    @tasks.sort { |task1, task2| task1.priority <=> task2.priority }
  end
end


numbers = [1, 2, 4, 5, 6, 7, 8, 9]
numbers.each do |number|

end
