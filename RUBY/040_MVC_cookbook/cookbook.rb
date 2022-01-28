require "csv"
require_relative "recipe"

# This file will be used as Repository from Lecture
class Cookbook
  def initialize(csv_file_path)
    @csv_file_path = csv_file_path
    @recipes = []
    read_from_csv
  end

  def all
    return @recipes
  end

  def add_recipe(recipe)
    @recipes << recipe
    write_to_csv
  end

  def remove_recipe(recipe_index)
    @recipes.delete_at(recipe_index)
    write_to_csv
  end

  def write_to_csv
    CSV.open(@csv_file_path, 'wb') do |csv| # "wb" is to write to File
      @recipes.each { |x| csv << [x.name, x.description] }
    end
  end

  def read_from_csv
    CSV.foreach(@csv_file_path) { |row| @recipes << Recipe.new(row[0], row[1]) }
  end
end
