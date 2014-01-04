require_relative 'winner_rules'

class TicTacToe
  
  attr_reader :current_player
  
  def initialize(options = {})   
    @current_player = 'O'   
    @plays = { 'X' => [], 'O' => [] }    
    @rules = options[:rules] || WinnerRules.new    
  end
  
  def start_game    
  end
  
  def winner?
    @rules.winner?(@plays)
  end
  
  def play(x, y)
    if winner?
      puts "#{@current_player} wins!"
    else
      @plays[@current_player] << [x, y]      
      @current_player = (@current_player == 'X') ? 'O' : 'X'            
    end
    
  end    
  
end