require_relative 'recipe'
require_relative 'view'

class Controller
  def initialize(cookbook)
    @cookbook = cookbook
    @view = View.new
  end

  def list
    display_recipes
  end

  def display_recipes
    # 1. Fetch the recipes from cookbook (csv file)
    recipes = @cookbook.all
    # 2. Send them to view for display
    @view.display(recipes)
  end

  def create
    # 1. Get the name from view
    name = @view.ask_user("name")
    # 2. Get description from view
    description = @view.ask_user("description")
    # 3. Create new recipe
    recipe = Recipe.new(name, description)
    # 4. Add to cookbook (csv file)
    @cookbook.add_recipe(recipe)
  end

  def destroy
    # 1. Display list with index
    # 2. Ask user for index
    index = @view.ask_user("index")
    # 3. Remove from cookbook (csv file)
    @cookbook.remove_recipe(index)
  end
end
