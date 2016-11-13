class Task
  attr_accessor :description

  def initialize(description, status = false)
    @description = description
    @status = status
  end

  def completed?
    @status
  end

  def complete
    @status = true
  end

  def to_s
    "#{@description},#{completed?}"
  end
end
