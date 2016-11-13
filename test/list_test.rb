require_relative "../lib/todo/list"
require_relative "../lib/todo/task"
require "test/unit"

class ListTest < Test::Unit::TestCase

  def test_list_creation
    list = List.new
    assert_true(list.all_tasks.empty?)
  end

  def test_add_task
    list = List.new
    task = Task.new("task")
    list.add(task)
    assert_equal(1,list.all_tasks.length)
  end

  def test_show
    list = List.new
    task = Task.new("task")
    list.add(task)
    assert_equal(1,list.show.length)
  end
end
