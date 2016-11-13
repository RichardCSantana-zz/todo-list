class Task
  attr_accessor :description

  def initialize(description)
    @description = description
  end

  def to_s
    @description
  end
end
