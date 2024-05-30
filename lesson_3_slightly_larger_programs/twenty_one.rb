
def welcome_message
  puts "Welcome to Twenty One!"
  sleep 1
  puts "Let's begin!"
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

def joiner(array_obj) #used in see_cards method
  array_obj.map(&:to_s).join("\n")
end

def see_cards(player_hand, dealer_hand)
  puts "\nDealer's visible card: #{dealer_hand[0]}"
  puts "--------------------"
  puts "Player's cards:"
  puts "\n#{joiner(player_hand)}"
end

def find_card_values(hand)
  card_values = []

  hand.each do |str_obj|
    split_obj = str_obj.split(" ")
    card_values << split_obj[0]
  end

  card_values
end

def num?(card) #used in convert_card_values_to_int method
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
    elsif card == "Ace" #handles updating the value of an ace
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

def play_again?
  valid_options = ["yes", "no"]
  answer = ""
  
  loop do
    puts "Would you like to play again?"
    answer = gets.chomp.downcase
    if valid_options.include?(answer)
      break
    else
      puts "That is not a valid option. Try again."
    end
  end
  
  answer
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

def closing_message
  prompt "The game is closing down now. Goodbye!"
end

#---- Game Loop ----#

loop do
  welcome_message
  deck = initialize_deck
  player_cards = deal_cards!(deck)
  dealer_cards = deal_cards!(deck)
  see_cards(player_cards, dealer_cards)
  
  winner = nil
  player_hand_value = 0
  dealer_hand_value = 0

  while winner.nil?
    player_hand_value = player_turn!(deck, player_cards, dealer_cards)
    if busted?(player_hand_value)
      winner = "Dealer"
      break
    end
  
    puts "\n-- Dealer's Turn --"
    sleep 1.5
  
    dealer_hand_value = dealer_turn!(deck, dealer_cards)
    if busted?(dealer_hand_value)
      winner = "Player"
      break
    end
  
    # Determine the winner if neither busted
    if !busted?(player_hand_value) && !busted?(dealer_hand_value)
      winner = determine_winner(player_hand_value, dealer_hand_value)
    end
  end
  
  puts "\n -- WE HAVE A WINNER! --"
  sleep 1.5
  
  case winner
  when "Tie"
    puts "It's a tie. Nobody won!"
  else
    puts "\nPlayer cards: #{player_cards.join(', ')} || Value: #{player_hand_value}"
    if busted?(player_hand_value)
      dealer_hand_value_message = "not calculated, because the player busted."
    else
      dealer_hand_value_message = dealer_hand_value.to_s
    end
    puts "Dealer's cards: #{dealer_cards.join(', ')} || Value: #{dealer_hand_value_message}"
    puts "\nThe winner is the #{winner.downcase}."
  end
  
  play_again_choice = play_again?
  break unless play_again_choice.downcase == "yes"
end

closing_message