#module for variables and grid
module Grid
  #player input variables
  #row 1
  @a1 = " "
  @b1 = " "
  @c1 = " "
  
  #row 2
  @a2 = " "
  @b2 = " "
  @c2 = " "
  
  #row 3
  @a3 = " "
  @b3 = " "
  @c3 = " "   
  
  #variables for grid display
  puts "   A   B   C "
  puts "1  #{@a1} | #{@b1} | #{@c1}  "
  puts "  ---+---+---"
  puts "2  #{@a2} | #{@b2} | #{@c2}  "
  puts "  ---+---+---"
  puts "3  #{@a3} | #{@b3} | #{@c3}  "
  
end

#class for running the game
class TicTacToe    
  
        
    #player input variables
    #row 1
    a1 = " "
    b1 = " "
    c1 = " "
    
    #row 2
    a2 = " "
    b2 = " "
    c2 = " "
    
    #row 3
    a3 = " "
    b3 = " "
    c3 = " "   

    #variables for grid
    puts "   A   B   C "
    puts "1  #{a1} | #{b1} | #{c1}  "
    puts "  ---+---+---"
    puts "2  #{a2} | #{b2} | #{c2}  "
    puts "  ---+---+---"
    puts "3  #{a3} | #{b3} | #{c3}  "
  #player class
  class Player
    def initialize(character)
      @character = @character
    end
  end
  #end game conditions
  #display grid class
  class GameGrid
    #variables for grid
    puts "   A   B   C "
    puts "1  #{a1} | #{b1} | #{c1}  "
    puts "  ---+---+---"
    puts "2  #{a2} | #{b2} | #{c2}  "
    puts "  ---+---+---"
    puts "3  #{a3} | #{b3} | #{c3}  "
  end
  #run game
  def PlayGame 
    #create players
    player1 = Player.new("X")
    player2 = Player.new("O")
    #print grid
    
    
  end
end
