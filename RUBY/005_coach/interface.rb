require_relative "coach_answer"
# TODO: Implement the program that makes you discuss with your coach from the terminal.
message = " "

while message != ""
  puts "Coach : Dear, please type your message or question here !"
  message = gets.chomp
  puts coach_answer_enhanced(message)
  puts coach_answer(message)
end
