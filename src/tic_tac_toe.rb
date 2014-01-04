class TicTacToe
  
  attr_reader :current_player
  
  def initialize
    
    @current_player = 'O'    
    
    @plays = { 'X' => [], 'O' => [] }
    
    @vertical_winner =    [ [1, -1], [1, 0], [1, 1] ] ||
                          [ [0, -1], [0, 0], [0, 1] ] ||
                          [ [-1, -1], [-1, 0], [-1, 1] ]
                       
    @horizontal_winner =  [ [1, -1], [0, -1], [-1, -1] ] ||
                          [ [1, 0], [0, 0], [0, -1] ] ||
                          [ [1, 1], [0, 1], [-1, 1] ]
                     
    @diagonal_winner = [ [1, -1], [0, 0], [-1, 1] ] ||
                       [ [-1, -1], [0, 0], [1, 1] ]
    
  end
  
  def start_game    
  end
  
  def play(x, y)
    if winner?
      puts "#{@current_player} wins!"
    else
      array = []
      array << x << y
      @plays[@current_player] << array
      @current_player = (@current_player == 'X') ? 'O' : 'X'      
    end
  end
  
  def winner?
    if @plays['X'] == @horizontal_winner || @plays['O'] == @horizontal_winner
      true
    elsif @plays['X'] == @vertical_winner || @plays['O'] == @vertical_winner
      true
    elsif @plays['X'] == @diagonal_winner || @plays['O'] == @diagonal_winner
      true
    else
      false
    end
  end
  
end