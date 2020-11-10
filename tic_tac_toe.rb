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
  def player1_round
    # create Player 1
    player1 = Player.new("Player 1", "X")
    
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

  def player2_round
    # create Player 2
    player2 = Player.new("Player 2", "O")
    # Ask Player 2 for space
    puts "#{player2.name}'s turn. Select a square, ex. B3"
    player2_choice = gets.chomp
    # check if entry is a possible one
    possible_entries = ["A1", "B1", "C1", "A2", "B2", "C2", "A3", "B3", "C3"]
    #loop until correct answer is given
    until possible_entries.include?(player2_choice) do
      puts "Not a valid answer. Select a square, ex. B3"
      player2_choice = gets.chomp
    end
    possible_entries.include?(player1_choice)
    # check if entry listed is taken
    case player2_choice
    when "A1"
      @a1 = player2.character
    when "B1"
      @b1 = player2.character    
    when "C1"
      @c1 = player2.character
    when "A2"
      @a2 = player2.character
    when "B2"
      @b2 = player2.character    
    when "C2"
      @c2 = player2.character    
    when "A3"
      @a3 = player2.character
    when "B3"
      @b3 = player2.character    
    when "C3"
      @c3 = player2.character
    end
    
    puts display_grid
  end
  
  #Method to declare a winner
  def end_game
    case 
    # columns for Player 1
    when @a1 == "X" && @a2 == "X" && @a3 == "X" 
      puts "That's game! Player 1 wins."
    when @b1 == "X" && @b2 == "X" && @b3 == "X" 
      puts "That's game! Player 1 wins."
    when @c1 == "X" && @c2 == "X" && @c3 == "X" 
      puts "That's game! Player 1 wins."
      
    # columns for Player 2
    when @a1 == "O" && @a2 == "O" && @a3 == "O" 
      puts "That's game! Player 2 wins."
    when @b1 == "O" && @b2 == "O" && @b3 == "O" 
      puts "That's game! Player 2 wins."
    when @c1 == "O" && @c2 == "O" && @c3 == "O" 
      puts "That's game! Player 2 wins."
    
    # rows for Player 1
    when @a1 == "X" && @b1 == "X" && @c1 == "X" 
      puts "That's game! Player 1 wins."
    when @a2 == "X" && @b2 == "X" && @c2 == "X" 
      puts "That's game! Player 1 wins."
    when @a3 == "X" && @b3 == "X" && @c3 == "X" 
      puts "That's game! Player 1 wins."
    
    # rows for Player 2
    when @a1 == "O" && @b1 == "O" && @c1 == "O" 
      puts "That's game! Player 2 wins."
    when @a2 == "O" && @b2 == "O" && @c2 == "O" 
      puts "That's game! Player 2 wins."
    when @a3 == "O" && @b3 == "O" && @c3 == "O" 
      puts "That's game! Player 2 wins."
    # tie case 
    when @a1 != " " && @a2 != " " && @a3 != " " &&
         @b1 != " " && @b2 != " " && @b3 != " " &&
         @c1 != " " && @c2 != " " && @c3 != " " 
      puts "It's a tie!"
    else
    end
  end
end
