def upcase_message(your_message)
  "I can feel your motivation! " if your_message == your_message.upcase
end

def coach_answer(your_message)
  # TODO: return coach answer to your_message
  if your_message == "I am going to work right now!"
    ""
  elsif your_message.reverse[0, 1] == "?"
    "Silly question, get dressed and go to work!"
  else
    "I don't care, get dressed and go to work!"
  end
end

def coach_answer_enhanced(your_message)
  # TODO: return coach answer to your_message, with additional custom rules of yours!
  if your_message.upcase == "I AM GOING TO WORK RIGHT NOW!"
    ""
  elsif your_message.reverse[0, 1] == "?"
    "#{upcase_message(your_message)}Silly question, get dressed and go to work!"
  else
    "#{upcase_message(your_message)}I don't care, get dressed and go to work!"
  end
end
