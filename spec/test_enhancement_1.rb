require_relative 'spec_helper'


describe Barracks do

  before :each do
    @barracks = Barracks.new
    @footman = Footman.new
  end

  describe "#damage" do

    it "has and knows its HP (health points)" do 
      expect(@barracks.health_points).to eq(500)
    end  
  end


 describe "#damage" do

  it "receives half the amount of damage from footman" do
   # previous_health_points = @barracks.health_points
   @footman.attack!(@barracks)
   expect(@barracks.health_points).to eq(495) #ruby is a cunt
  end
 end 
 
end
