require 'spec_helper'
require 'tic_tac_toe'

describe TicTacToe do

  it 'should report no winner when the game has just begun' do    
    t = TicTacToe.new    
    expect(t.winner?).to be_false    
  end
  
  it 'should report O winner for upper horizontal row' do
    t = TicTacToe.new
        
    t.play(1, -1) # O    
    t.play(-1, 0) # X
    
    t.play(0, -1) # O    
    t.play(0, 0) # X
    
    t.play(-1, -1) # O
    expect(t.winner?).to be_true
    
  end
  
end