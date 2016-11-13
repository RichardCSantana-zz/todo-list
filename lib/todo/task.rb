class Task
  attr_accessor :description

  def initialize(description, status = false)
    @description = description
    @status = status
  end

  def completed?
    @status
  end

  def toogle
    @status = !@status
  end

  def to_s
    "#{@description},#{completed?}"
  end
end
