require 'spec_helper'

describe Game do 
  context "only one cell" do 
    it "dead cell will still be dead" do 
      game = Game.new [[0]]
      game.tick.should == [[0]]
    end

    it "live cell will be dead" do 
      game = Game.new [[1]]
      game.tick.should == [[0]]
    end
  end
end
