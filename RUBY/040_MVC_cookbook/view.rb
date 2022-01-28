class View
  # display
  def display(recipes)
    recipes.each_with_index do |recipe, index|
      puts "#{index + 1}. #{recipe.name}: #{recipe.description}"
    end
  end

  # ask_user
  def ask_user(action)
    puts "What is the #{action.capitalize} of your recipe?"
    action == "index" ? gets.chomp.to_i - 1 : gets.chomp
  end
end
