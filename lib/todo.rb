require_relative "todo/interface"

    if __FILE__ == $PROGRAM_NAME
      interface = Interface.new
      interface.start
    end
