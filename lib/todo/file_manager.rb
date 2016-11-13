require_relative "task"

module FileManager

  def write_content_to_file(filename, content)
    file = File.open(filename,"w")
    content.each do |task|
      file.puts(task.to_s)
    end
  end

end
