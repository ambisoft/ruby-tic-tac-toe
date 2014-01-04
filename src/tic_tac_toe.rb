class TicTacToe
  
  attr_reader :current_player
  
  def initialize
    
    @current_player = 'O'
    
    @plays = { 'X' => [], 'O' => [] }        
    
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
    horizontal_winner(@plays['X']) || horizontal_winner(@plays['O']) ||
    vertical_winner(@plays['X']) || vertical_winner(@plays['O']) ||
    diagonal_winner(@plays['X']) || diagonal_winner(@plays['O'])        
  end
  
  private
  
  def horizontal_winner(plays)
    plays.map(&:last).uniq.size == 1
  end
  
  def vertical_winner(plays)    
    plays.map(&:first).uniq.size == 1
  end
  
  def diagonal_winner(plays)
    plays.include?([0, 0]) &&
    (plays.include?([-1, -1]) && plays.include?([1, 1])) ||
    (plays.include?([-1, 1]) && plays.include?([1, -1]))
  end
  
end