require "open-uri"
require "nokogiri"

class Search
  def search_ingredients(ingredient)
    recipes = []
    webbrowser = "https://www.allrecipes.com/search/results/?search="
    doc = Nokogiri::HTML(URI.open("#{webbrowser}#{ingredient}"))
    title = doc.search('.card__title').map { |word| word.text.strip }
    summary = doc.search('.card__summary').map { |word| word.text.strip }
    5.times { |i| recipes << [title[i], summary[i]] }
    return recipes
  end
end
