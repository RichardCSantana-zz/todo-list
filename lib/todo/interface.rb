require_relative "list"
require_relative "task"
require_relative "menu"
require_relative "promptable"

class Interface
  include Menu
  include Promptable
  public

  def start
    @my_list = List.new
    menu
    loop do
      case prompt.upcase
      when 'A'
        add
      when 'S'
        show
      when 'W'
        write_file
      when 'R'
        read_file
      when 'D'
        show
        delete
      when 'U'
        show
        update
      when 'T'
        show
        toggle
      when 'Q'
        break
      else
        puts "Command not identified"
      end
    end
  end

  private

  def add
    @my_list.add(Task.new(prompt('What is the task you would like to accomplish?')))
  end

  def show
    count = 1
    @my_list.show.each do |task|
      puts "#{count}: #{task.description} [" + (task.completed? ? "X" : " ") + "]"
      count += 1
    end
  end

  def write_file
    @my_list.write_to_file(prompt('Which file do you like to write to?'))
  end

  def read_file
    begin
      @my_list.read_from_file(prompt('Which file do you like to read from?'))
    rescue Errno::ENOENT
      puts "File not found, please verify your filename."
    end
  end

  def delete
    @my_list.delete(prompt('Which task do you want to delete?'))
  end

  def update
    @my_list.update(prompt('Which task do you want to update?'),prompt('Which is the new description ?'))
  end

  def toggle
    @my_list.toggle(prompt('Which task do you want to toggle?'))
  end

end
