class Recipe
  attr_reader :name, :description

  def initialize(name, description)
    # Creating instance variable
    @name = name
    @description = description
  end
end
