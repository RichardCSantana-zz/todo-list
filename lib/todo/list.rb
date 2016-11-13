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

  def write_to_file(filename)
    write_content_to_file(filename, @all_tasks)
  end

  def read_from_file(filename)
    @all_tasks = read_content_from_file(filename)
  end
end
