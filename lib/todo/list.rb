require_relative "file_manager"

class List
  include FileManager
  attr_reader :all_tasks

  def initialize
    @all_tasks = Array.new
  end

  def add(task)
    @all_tasks << task
  end

  def show
    @all_tasks
  end

  def complete(index)
    value = index.to_i
    value -= 1
    @all_tasks[value].complete
  end

  def delete(index)
    value = index.to_i
    value -= 1
    @all_tasks.delete_at(value)
  end

  def update(index, new_description)
    value = index.to_i
    value -= 1
    @all_tasks[value] = Task.new(new_description)
  end

  def write_to_file(filename)
    write_content_to_file(filename, @all_tasks)
  end

  def read_from_file(filename)
    @all_tasks = read_content_from_file(filename)
  end
end
