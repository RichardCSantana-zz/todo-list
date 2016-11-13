require_relative "task"

module FileManager

  def write_content_to_file(filename, content)
    file = File.open(filename,"w")
    content.each do |task|
      file.puts(task.to_s)
    end
  end

  def read_content_from_file(filename)
    task = Array.new
    File.open(filename,"r").readlines.each do |line|
      value = line.split(',')
      task << Task.new(value[0],value[1].gsub("\n",'') == "true")
    end
    return task
  end

end
