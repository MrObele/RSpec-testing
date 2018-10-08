require 'tic-tac-toe/game'



RSpec.describe Game do
   describe "#check_end_game" do
    it "should end the game when it is supposed to" do
      new_game = Game.new
      @player1.name = "Uzor"
      @player2.name = "David"
      expect(new_game.check_end_game).to eql(true) if @player1.cells_taken = [0, 1, 2]
    end
  end

end