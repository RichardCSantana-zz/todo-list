require_relative "../lib/todo/task"
require "test/unit"

class TaskTest < Test::Unit::TestCase

  def test_toogle
    task = Task.new("task")
    assert_false(task.completed?)
    task.toogle
    assert_true(task.completed?)
  end

end
