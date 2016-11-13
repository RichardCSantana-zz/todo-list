require_relative "todo/list"
require_relative "todo/task"
require_relative "todo/menu"
require_relative "todo/promptable"

if __FILE__ == $PROGRAM_NAME
  my_list = List.new
  include Menu
  include Promptable
  menu
  loop do
    case prompt.upcase
    when 'A'
      my_list.add(Task.new(prompt('What is the task you would like to accomplish?')))
    when 'S'
      count = 1
      my_list.show.each do |task|
        puts "#{count}: #{task.description}"
        count += 1
      end
    when 'W'
      my_list.write_to_file(prompt('Which file do you like to write to?'))
    when "Q"
      break
    else
      puts "Command not identified"
    end
  end
end
