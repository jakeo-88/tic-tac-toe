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
  
  # variables for grid display
  puts "   A   B   C "
  puts "1  #{@a1} | #{@b1} | #{@c1}  "
  puts "  ---+---+---"
  puts "2  #{@a2} | #{@b2} | #{@c2}  "
  puts "  ---+---+---"
  puts "3  #{@a3} | #{@b3} | #{@c3}  "
  
end

# class for running the game
class TicTacToe    
  include GridComponents

  def display_grid
    puts @@grid
  end

  # run game
  def play_game 
    # create players
    player1 = Player.new("X")
    player2 = Player.new("O")
    # display  grid
    display_grid
    # Ask Player 1
    
  end
end
