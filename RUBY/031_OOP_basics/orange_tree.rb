class OrangeTree
  # TODO: Implement all the specs defined in the README.md :)
  attr_accessor :age, :height, :fruits

  def initialize
    @age = 0
    @height = 0
    @fruits = 0
    @alive = true
    @dead_age = rand(50..85)
  end

  def dead?
    return !@alive
  end

  def one_year_passes!
    if @age <= 99 && @dead_age <= 99
      @age += 1
      @dead_age += 1 if @age > 50
      @fruits = 0
    else
      @alive = false
    end
    @height += 1 if @age <= 10
    @fruits = 100 if @age.between?(6, 9)
    @fruits = 200 if @age.between?(10, 14)
  end

  def pick_a_fruit!
    @fruits.positive? ? @fruits -= 1 : "no fruits available"
  end
end
