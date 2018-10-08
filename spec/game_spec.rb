require './tictactoe/game'

describe Game do

  before do
    @player1 = Player.new("david", "X")
    @player2 = Player.new("chibuzor", "O")
    @current_player = @player1
    @end_game = false
  end

   describe "#switch_player" do
    it "should change to player2 if current player is player1" do
      Game.new.switch_player
      expect(@current_player.name).to eql(@player2.name)
    end
  end
end