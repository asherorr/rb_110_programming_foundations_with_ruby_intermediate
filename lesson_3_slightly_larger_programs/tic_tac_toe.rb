require 'pry'

INITIAL_MARKER = " "
PLAYER_MARKER = "X"
COMPUTER_MARKER = "O"
WINNING_LINES = [[1, 2, 3], [4, 5, 6],
                   [7, 8, 9]] + [[1, 4, 7], [2, 5, 8],
                                 [3, 6, 9]] + [[1, 5, 9], [3, 5, 7]]

def prompt(msg)
  puts "-> #{msg}"
end

def display_board(brd)
  puts "You're a #{PLAYER_MARKER} and Computer is #{COMPUTER_MARKER}."
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def joinor(array_obj, delimeter= ", ", word= "or")
  if array_obj.size < 3
    result = array_obj[0].to_s + " #{word} " + array_obj[1].to_s
  else
    array_obj[-1] = "#{word} " + array_obj[-1].to_s
    result = array_obj.join("#{delimeter}")
  end
end

def player_places_piece(brd)
  square = ''
  loop do
    # prompt "Choose a square (#{empty_squares(brd).join(', ')}):"
    prompt "Choose a square: #{joinor(empty_squares(brd))}"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that's not a valid choice."
  end
  brd[square] = PLAYER_MARKER
end

def find_at_risk_square(line, board, marker)
  if board.values_at(*line).count(marker) == 2
    board.select{|k, v| line.include?(k) && v == INITIAL_MARKER}.keys.first
  else
    nil
  end
end

def computer_places_piece(brd)
  square = nil
  #offense
  WINNING_LINES.each do |line|
    square = find_at_risk_square(line, brd, COMPUTER_MARKER)
    break if square
  end
  
  #defense
  if !square
    WINNING_LINES.each do |line|
      square = find_at_risk_square(line, brd, PLAYER_MARKER)
      break if square
    end
  end
  
  #pick square #5
  if !square
    square = 5
  end
  
  #pick random square
  if !square
    square = empty_squares(brd).sample
  end
  
  brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd[line[0]] == PLAYER_MARKER && brd[line[1]] == PLAYER_MARKER && brd[line[2]] == PLAYER_MARKER
      return 'Player'
    elsif brd[line[0]] == COMPUTER_MARKER && brd[line[1]] == COMPUTER_MARKER && brd[line[2]] == COMPUTER_MARKER
      return 'Computer'
    end
  end
  nil
end

def select_who_goes_first
  loop do
    prompt "Who goes first? Computer or Player?"
    response = gets.chomp
    if response != "Computer" && response != "Player"
      puts "That is not a valid option. Try again."
    else
      break
    end
  response
  end
end

def play_until_someone_wins(board, first_player)
  if first_player == "Computer"
    loop do
      display_board(board)
  
      computer_places_piece(board)
      break if someone_won?(board) || board_full?(board)
  
      player_places_piece(board)
      break if someone_won?(board) || board_full?(board)
    end
    
  else
    loop do
      display_board(board)
  
      player_places_piece(board)
      break if someone_won?(board) || board_full?(board)
  
      computer_places_piece(board)
      break if someone_won?(board) || board_full?(board)
    end
  end
end

computer_score = 0
player_score = 0

loop do
  while computer_score < 5 || player_score < 5
    board = initialize_board
    player = select_who_goes_first
    play_until_someone_wins(board, player)
    display_board(board)
    
    # if someone wins, show prompts and update the score.
    if someone_won?(board)
      prompt "#{detect_winner(board)} won!"
      computer_score += 1 if detect_winner(board) == "Computer"
      player_score += 1 if detect_winner(board) == "Player"
      break if computer_score == 5 || player_score == 5
    else
      prompt "It's a tie!"
    end
  end
  
  
  prompt "One of the players has reached 5 wins. Play again? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "Thanks for playing Tic Tac Toe! Good bye!"