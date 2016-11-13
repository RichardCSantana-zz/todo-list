class List
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
end
