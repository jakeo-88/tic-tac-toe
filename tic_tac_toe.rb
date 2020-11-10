# module for variables and grid
module GridComponents
  # method to set player variables
  def column_row(a1, b1, c1, a2, b2, c2, a3, b3, c3)
    # player input variables
    # row 1
    @a1 = " "
    @b1 = " "
    @c1 = " "
    
    # row 2
    @a2 = " "
    @b2 = " "
    @c2 = " "
    
    # row 3
    @a3 = " "
    @b3 = " "
    @c3 = " "   
  end

  # method for grid display
  def display_grid
    # variables for grid display
    @grid = "   A   B   C  \n" \
     "1  #{@a1} | #{@b1} | #{@c1}  \n" \
     "  ---+---+--- \n" \
     "2  #{@a2} | #{@b2} | #{@c2}  \n" \
     "  ---+---+--- \n" \
     "3  #{@a3} | #{@b3} | #{@c3}  \n"
  end
  
end
# class for players
class Player
  def initialize(name, character)
    @name = name
    @character = character
  end
end 

# class for running the game
class TicTacToe    
  include GridComponents

  #start-up
  def game_start
    # create grid
    column_row(" ", " ", " ", " ", " ", " ", " ", " ", " ") 
    # display grid
    puts display_grid
  end
  
  # run game
  def play_game 
    # create players
    player1 = Player.new("Player 1", "X")
    player2 = Player.new("Player 2", "O")
    
    # Ask Player 1
    puts "#{player1.name}'s turn. Select a square, ex. A1"
    player1_choice = gets.chomp
    # possible entries
    possible_entries = ["A1", "B1", "C1", "A2", "B2", "C2", "A3", "B3", "C3"]
    # loop until correct answer is given
    until possible_entries.include?(player1_choice) do
      puts "Not a valid answer. Select a square, ex. B3"
      player1_choice = gets.chomp
    end
    
    case player1_choice
    when "A1"
      @a1 = player1.character
    when "B1"
      @b1 = player1.character    
    when "C1"
      @c1 = player1.character
    when "A2"
      @a2 = player1.character
    when "B2"
      @b2 = player1.character    
    when "C2"
      @c2 = player1.character    
    when "A3"
      @a3 = player1.character
    when "B3"
      @b3 = player1.character    
    when "C3"
      @c3 = player1.character
    end
    # display grid
    puts display_grid
  end
end
