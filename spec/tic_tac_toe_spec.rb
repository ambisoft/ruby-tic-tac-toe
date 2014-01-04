require 'spec_helper'
require 'tic_tac_toe'

describe TicTacToe do

  it 'should report no winner when the game has just begun' do    
    t = TicTacToe.new
    expect(t.winner?).to be_false    
  end
  
end