require_relative 'black_jack'

def state_of_the_game(player_score, bank_score)
  # TODO: return (not print!) a message containing the player's score and bank's score
  return "Your score is #{player_score}, bank is #{bank_score}}"
end

def end_game_message(player_score, bank_score)
  # TODO: return (not print!) a message telling if the user won or lost.
  return "lose" if player_score > 21 || player_score < bank_score
  return "Black Jack" if player_score == 21
  return "You beat the bank! You win." if player_score > bank_score
  return "Push" if player_score == bank_score
end
