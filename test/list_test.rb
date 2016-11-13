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

  def test_delete
    list = List.new
    5.times do |index|
      list.add(Task.new("Task#{index}"))
    end
    list.delete(4)
    assert_equal(4,list.show.length)
    assert_equal("Task4",list.all_tasks[3].description)
  end

  def test_update
    list = List.new
    5.times do |index|
      list.add(Task.new("Task#{index}"))
    end
    list.update(4,"strange")
    assert_equal("strange",list.all_tasks[3].description)
  end

  def test_toogle
    list = List.new
    5.times do |index|
      list.add(Task.new("Task#{index}"))
    end
    list.toogle(4)
    assert_true(list.all_tasks[3].completed?)
    list.toogle(4)
    assert_false(list.all_tasks[3].completed?)
  end
end
