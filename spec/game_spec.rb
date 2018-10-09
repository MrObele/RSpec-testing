require './tictactoe/game'

describe Game do
 
  before(:all) do
    @player1 = Player.new("david", "X")
    @player2 = Player.new("chibuzor", "O")
    @current_player = @player1
    @end_game = false
  end

   describe "#switch_player" do
   game = Game.new
    it "should change to player2 if current player is player1" do 
      expect(game.switch_player.name).to eql(@player2.name)
    end
  end
  describe "#show_board" do
  game = Game.new
    it "should change the current state of a board box" do 
      @cells = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
      expect(game.show_board).to eql("   |    |   " + "\n" + "------------" + "\n" + "   |    |   " + "\n" + "------------" + "\n" + "   |    |   ")
    end

    # it "should change the current state of a board box" do 
    #   @cells = ["X", " ", " ", " ", " ", " ", " ", " ", " "]
    #   expect(game.show_board).to eql("#{@cells[0]}  | #{@cells[1]}  |  #{@cells[2]}" + "\n" + "------------" + "\n" + "#{@cells[3]}  | #{@cells[4]}  |  #{@cells[5]}" + "\n" + "------------" + "\n" + "#{@cells[6]}  | #{@cells[7]}  |  #{@cells[8]}")
    # end
  end

  before do
    @cells = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
    @player1 = Player.new("david", "X")
    @player2 = Player.new("chibuzor", "O")
    @current_player = @player1
    @end_game = false
  end
  describe "#player_choice" do

     game = Game.new
    it "throw exception when the user tries to supply a number outside the range 1 to 9" do 
      expect{game.player_choice(12)}.to raise_error("Type a number between 1 and 9")
    end
    it "Assigns the current player's shape to the specified cell" do 

      expect(game.player_choice(9)).to eql(@current_player.shape)
    end
    it "throw exception if the current cell chosen is already occupied" do 
      expect{game.player_choice(9)}.to raise_error("This cell has been chosen, Please select another cell")
    end
    it "Add the given number -1 into the current player selected cells array " do 
      game.player_choice(7)
      expect(@player2.cells_selected).to eql([6])
    end

  end

end