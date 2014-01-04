class WinnerRules
  
  BOARD_SIZE = 3
  
  def winner?(moves)
    horizontal?(moves['X']) || horizontal?(moves['O']) ||
    vertical?(moves['X']) || vertical?(moves['O']) ||
    diagonal?(moves['X']) || diagonal?(moves['O'])        
  end
  
  private
  
  def horizontal?(player_moves)
    player_moves.map(&:last).uniq.size == 1
  end
  
  def vertical?(player_moves)    
    player_moves.map(&:first).uniq.size == 1
  end
  
  def diagonal?(player_moves)
    (player_moves.map(&:first).uniq.size == BOARD_SIZE) &&
    (player_moves.map(&:last).uniq.size == BOARD_SIZE)
  end    
  
end