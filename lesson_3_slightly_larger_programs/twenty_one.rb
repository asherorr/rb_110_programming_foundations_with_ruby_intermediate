require 'pry'

def welcome_message
end

def initialize_deck
  cards_in_suite = ["Ace", 2, 3, 4, 5, 6, 7, 8, 9, 10, "Jack", "Queen", "King"]
  suites = {
    "♠" => cards_in_suite,
    "♣" => cards_in_suite,
    "♥" => cards_in_suite,
    "♦︎" => cards_in_suite,
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

def joiner(array_obj, delimeter= ", ", word= "||")
  array_obj[0].to_s + " #{word} " + array_obj[1].to_s
end

def see_cards(player_hand, dealer_hand)
  puts "Dealer's cards: #{joiner(dealer_hand)}"
  puts "--"
  puts "Player's cards: #{joiner(player_hand)}"
end

def find_card_values(hand)
  card_values = []
  
  hand.each do |str_obj|
    split_obj = str_obj.split(" ")
    card_values << split_obj[0]
  end
  
  card_values
end

def is_num(card)
  true if Float(card) rescue false
end

def convert_card_values_to_int(hand)
  face_cards = ["Jack", "Queen", "King"]
  card_values_as_ints = []
  
  hand.each do |card|
    card_values_as_ints << 10 if face_cards.include?(card)
    card_values_as_ints << 11 if card == "Ace" && !hand.include?("Ace")
    card_values_as_ints << 1 if card == "Ace" && hand.include?("Ace")
    card_values_as_ints << card.to_i if is_num(card)
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
    prompt "Would you like to hit or stay?"
    answer = gets.chomp.downcase
    break if valid_options.include?(answer)
    prompt "That is not a valid option. Try again."
  end
  
  answer
end

def hit(deck, hand)
  card = deck.sample
  card_index = deck.index(card)
  deck.delete_at(card_index)
  hand.append(card)
end

def stay
  pass
end

def determine_winner(player_hand, dealer_hand)
end

def play_again
end

def closing_message
end

deck = initialize_deck
player_cards = deal_cards!(deck)
dealer_cards = deal_cards!(deck)
see_cards(player_cards, dealer_cards)

player_card_values = find_card_values(player_cards)
player_cards_to_int = convert_card_values_to_int(player_card_values)
player_hand_value = calculate_hand_value(player_cards_to_int)