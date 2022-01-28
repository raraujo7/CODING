require_relative "animal"

class Chicken < Animal
  attr_reader :eggs

  def initialize(gender)
    super()
    @gender = gender
    @eggs = 0
  end

  def feed!
    super()
    @eggs += 2 if @gender == "female"
  end

  def talk
    case @gender
    when "male" then "cock-a-doodle-doo"
    when "female" then "cluck cluck"
    end
  end
end
