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

def see_dealer_cards(hand)
end

def see_player_cards(hand)
end

def choose_to_hit_or_stay(player)
end

def hit
end

def stay
end

def determine_ace_value
end

def calculate_hand_value
end

def compare_cards
end

def play_again
end

def closing_message
end

deck = initialize_deck
player_cards = deal_cards!(deck)
dealer_cards = deal_cards!(deck)