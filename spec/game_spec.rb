require 'spec_helper'

def assert_grid init_grid, expected_grid
  game = Game.new init_grid
  game.tick.should == expected_grid
end

describe Game do 
  context "only one cell" do 
    it "dead cell will still be dead" do 
      assert_grid [[0]], [[0]]
    end

    it "live cell will be dead" do 
      assert_grid [[1]], [[0]]
    end
  end

  #context "two cells" do
    #it "dead cell will still be dead" do
      #assert_grid [[0], [0]]
    #end
  #end
end
