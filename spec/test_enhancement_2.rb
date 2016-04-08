require_relative 'spec_helper'

describe Unit do

  before :each do
    @unit = Unit.new(60,10)
    @zombie = Unit.new(0,10)    
  end

  describe "#dead" do 

    it "is a method in unit because all footman and peasants can die" do
    expect(@health_points == 0)
    end
   
    it "a dead unit cant attack another unit" do
      hp = @unit.health_points
      @zombie.attack!(@unit)
      expect(@unit.health_points).to eq(hp)
    end

    it "neither can an alive unit attack a dead unit" do
      hp = @zombie.health_points
      @unit.attack!(@zombie)
      expect(@zombie.health_points).to eq(hp)
    end
   end 
end