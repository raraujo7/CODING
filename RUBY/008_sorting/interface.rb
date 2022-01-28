require_relative "wagon_sort"

# TODO: Ask the user about students to add to the Wagon.
#       Remember, to read an input from the command line, use:
#       - `gets`:  http://www.ruby-doc.org/core-2.5.3/Kernel.html#method-i-gets
#       - `chomp`: http://www.ruby-doc.org/core-2.5.3/String.html#method-i-chomp

puts "Type a student name:"
names = []
list = ""

loop do
  input = gets.chomp
  break if input == ''

  names << input
  puts "Type another student name or press enter to finish:"
end

puts "Congratulations! Your Wagon has #{names.size} students:"


# TODO: Then call `wagon_sort` method defined in the wagon_sort.rb
#       file and display the sorted student list
names_sorted = wagon_sort(names)

puts names_sorted
if names.size > 1
  names_sorted.each do |x|
    if x == names_sorted.first
      list = x.to_s
    elsif x == names_sorted.last
      list += " and #{x}"
    else
      list += ", #{x}"
    end
  end
else
  list += "1 student"
end
puts list
