def welcome_message
  puts "Welcome to Twenty One!"
  sleep 1
end

def initialize_deck
  cards_in_suite = ["Ace", 2, 3, 4, 5, 6, 7, 8, 9, 10, "Jack", "Queen", "King"]
  suites = {
    "♠" => cards_in_suite,
    "♣" => cards_in_suite,
    "♥" => cards_in_suite,
    "♦︎" => cards_in_suite
  }

  deck = []
  suites.each do |suite, array_of_cards|
    array_of_cards.each do |card|
      deck.append("#{card} of #{suite}")
    end
  end
  deck
end

def deal_cards!(deck)
  player_cards = []

  loop do
    break if deck.empty? || player_cards.size == 2

    card = deck.sample
    card_index = deck.index(card)
    player_cards << card
    deck.delete_at(card_index)
  end

  player_cards
end

def joiner(array_obj) # used in see_cards method
  array_obj.map(&:to_s).join("\n")
end

def see_cards(player_hand, dealer_hand)
  puts "\nDealer's visible card: #{dealer_hand[0]}"
  puts "--------------------"
  puts "Player's cards:"
  puts "#{joiner(player_hand)}"
end

def find_card_values(hand)
  card_values = []

  hand.each do |str_obj|
    split_obj = str_obj.split
    card_values << split_obj[0]
  end

  card_values
end

def num?(card) # used in convert_card_values_to_int method
  true if Float(card)
rescue StandardError
  false
end

def convert_card_values_to_int(hand)
  face_cards = ["Jack", "Queen", "King"]
  card_values_as_ints = []
  ace_count = 0

  hand.each do |card|
    if face_cards.include?(card)
      card_values_as_ints << 10
    elsif card == "Ace" # handles updating the value of an ace
      if ace_count == 0
        card_values_as_ints << 11
        ace_count += 1
      else
        card_values_as_ints << 1
      end
    elsif num?(card)
      card_values_as_ints << card.to_i
    end
  end

  card_values_as_ints
end

def calculate_hand_value(hand)
  hand.sum
end

def prompt(msg)
  puts "\n-> #{msg}"
end

def choose_to_hit_or_stay
  answer = ""

  loop do
    valid_options = ["hit", "stay"]
    prompt "Hit or stay?"
    answer = gets.chomp.downcase
    break if valid_options.include?(answer)
    prompt "That is not a valid option. Try again."
  end

  answer
end

def hit!(deck, hand)
  card = deck.sample
  card_index = deck.index(card)
  deck.delete_at(card_index)
  hand.append(card)
  hand
end

def busted?(hand_value)
  busted = false

  if hand_value > 21
    busted = true
  end

  busted
end

def determine_winner(player_hand, dealer_hand)
  result = player_hand <=> dealer_hand

  case result
  when -1
    winner = "Dealer"
  when 0
    winner = "Tie"
  when 1
    winner = "Player"
  end

  winner
end

def player_turn!(deck, hand, dealer_hand)
  busted = false
  stay = false

  until busted || stay
    decision = choose_to_hit_or_stay
    stay = true if decision == "stay"
    hit!(deck, hand) if decision == "hit"
    see_cards(hand, dealer_hand)

    player_hand_value = convert_card_values_to_int(find_card_values(hand)).sum
    busted = true if busted?(player_hand_value)
  end

  player_hand_value
end

def dealer_turn!(deck, hand)
  busted = false
  dealer_hand_value = 0

  until dealer_hand_value > 17 || busted
    dealer_hand_value = convert_card_values_to_int(find_card_values(hand)).sum
    hit!(deck, hand)
    busted = true if busted?(dealer_hand_value)
  end

  dealer_hand_value
end

def end_of_round_output(winner, player_cards, player_hand_value, dealer_cards, dealer_hand_value)
  puts "\nPlayer cards: #{player_cards.join(', ')} || Value: #{player_hand_value}"
  
  dealer_hand_value_message = busted?(player_hand_value) ? "Not calculated, because the player busted." : dealer_hand_value.to_s
  puts "Dealer's cards: #{dealer_cards.join(', ')} || Value: #{dealer_hand_value_message}"
  puts "\nThe winner is the #{winner.downcase}"
end

def display_scores(player_score, dealer_score, round)
  puts "Round: #{round}"
  puts "Score: Player: #{player_score} || Dealer: #{dealer_score}"
end

def update_score!(winner, player_score, dealer_score)
  if winner == "Player"
    player_score += 1
  elsif winner == "Dealer"
    dealer_score += 1
  end
  [player_score, dealer_score]
end

def check_for_game_winner(player_score, dealer_score)
  if player_score == 5
    puts "\nPlayer wins the game with 5 points!"
    true
  elsif dealer_score == 5
    puts "\nDealer wins the game with 5 points!"
    true
  else
    false
  end
end

def play_again?
  valid_options = ["yes", "no"]
  answer = ""

  loop do
    puts "Would you like to play again? (enter 'yes' or 'no')."
    answer = gets.chomp.downcase
    if valid_options.include?(answer)
      break
    else
      puts "That is not a valid option. Try again."
    end
  end

  answer
end

def closing_message
  puts "The game is closing down now. Goodbye!"
end

# -- Main Game Loop -- 

player_score = 0
dealer_score = 0
round = 1

loop do
  welcome_message
  display_scores(player_score, dealer_score, round)

  deck = initialize_deck
  player_cards = deal_cards!(deck)
  dealer_cards = deal_cards!(deck)
  see_cards(player_cards, dealer_cards)

  winner = nil

  while winner.nil?
    player_hand_value = player_turn!(deck, player_cards, dealer_cards)
    if busted?(player_hand_value)
      winner = "Dealer"
      dealer_score += 1
      break
    end

    puts "\n-- Dealer's Turn --"
    sleep 1.5

    dealer_hand_value = dealer_turn!(deck, dealer_cards)
    if busted?(dealer_hand_value)
      winner = "Player"
      player_score += 1
      break
    end

    # Determine the winner if neither busted
    if !busted?(player_hand_value) && !busted?(dealer_hand_value)
      winner = determine_winner(player_hand_value, dealer_hand_value)
      player_score, dealer_score = update_score!(winner, player_score, dealer_score)
    end
  end
  
  puts "\nWE HAVE A WINNER!"
  round += 1
  sleep 1.5
  
  case winner
  when "Tie"
    puts "It's a tie. Nobody won!"
    
  else
    puts "\nPlayer cards: #{player_cards.join(', ')} || Value: #{player_hand_value}"
    
    dealer_hand_value_message = if busted?(player_hand_value)
                                  "Not calculated, because the player busted."
                                else
                                  dealer_hand_value.to_s
                                end
    
    puts "Dealer's cards: #{dealer_cards.join(', ')} || Value: #{dealer_hand_value_message}"
    puts "\nThe winner is the #{winner.downcase}."
  end


  break if check_for_game_winner(player_score, dealer_score)

  play_again_choice = play_again?
  break unless play_again_choice.downcase == "yes"
end

closing_message
