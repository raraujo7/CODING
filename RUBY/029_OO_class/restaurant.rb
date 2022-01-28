class Restaurant
  attr_reader :type

  def initialize(name, type)
    @name = name
    @type = type
  end

  def love
    puts "I Love #{@type} restaurant. Yumy Yumy!!"
  end
end
