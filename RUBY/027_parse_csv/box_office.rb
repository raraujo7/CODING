require 'csv'
# require 'date'

def most_successful(number, max_year, file_path)
  # TODO: return the `number` of most successful movies before `max_year`
  movies = []
  csv_options = { headers: %i[name year earnings] }
  CSV.foreach(file_path, csv_options) do |row|
    movies << { name: row[:name], year: row[:year].to_i, earnings: row[:earnings].to_i } if row[:year].to_i < max_year
  end
  movies.sort_by { |movie| -movie[:earnings] }.take(number)
end

# most_successful(3, 1975, File.dirname(__FILE__) + "/../lib/movies.csv")
