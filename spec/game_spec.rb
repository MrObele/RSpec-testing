require './tictactoe/game'

describe Game do
  game = Game.new
  before(:all) do
    @player1 = Player.new("david", "X")
    @player2 = Player.new("chibuzor", "O")
    @current_player = @player1
    @end_game = false
  end

   describe "#switch_player" do
    it "should change to player2 if current player is player1" do 
      expect(game.switch_player.name).to eql(@player2.name)
    end
  end
  describe "#show_board" do
    it "should change the current state of a board box" do 
      @cells = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
      expect(game.show_board).to eql("   |    |   " + "\n" + "------------" + "\n" + "   |    |   " + "\n" + "------------" + "\n" + "   |    |   ")
    end

    # it "should change the current state of a board box" do 
    #   @cells = ["X", " ", " ", " ", " ", " ", " ", " ", " "]
    #   expect(game.show_board).to eql("#{@cells[0]}  | #{@cells[1]}  |  #{@cells[2]}" + "\n" + "------------" + "\n" + "#{@cells[3]}  | #{@cells[4]}  |  #{@cells[5]}" + "\n" + "------------" + "\n" + "#{@cells[6]}  | #{@cells[7]}  |  #{@cells[8]}")
    # end
  end

  describe "#player_choice" do
    it "it should convert the number from the user and return the number - 1" do 
      expect(game.player_choice(9)).to eql(8)
    end

    it "throw exception when the user tries to supply a number outside the range 1 to 9" do 
      expect(game.player_choice(12)).to eq(game.player_choice)
    end
  end
end