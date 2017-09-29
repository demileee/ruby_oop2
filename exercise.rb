class TodoList
  @@tasks = []

  def self.add_task(description, due_date)
    task = Task.new(description, due_date)
    @@tasks << task
    return task
  end

  def self.all
    return @@tasks
  end

end

class Task
  attr_accessor :description, :due_date

  def initialize(description, due_date)
    @description = description
    @due_date = due_date
  end

end

TodoList.add_task("Take over the world, Pinky", "Today")
puts TodoList.all.inspect
