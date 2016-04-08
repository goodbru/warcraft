require_relative 'spec_helper'

describe SiegeEngine do 

  before :each do
    @destroyer_bot = SiegeEngine.new
  end

  describe "#attack!" do

    it "this new method can do double its AP against barracks" do
      enemy = Barracks.new #500
      @destroyer_bot.attack!(enemy)
      expect(enemy.health_points).to eq(400)
    end
  end
  
  it "has and knows its HP (health_points)" do
    expect(@destroyer_bot.health_points).to eq(400)
  end

  it "has and knows its AP (attack_power)" do
    expect(@destroyer_bot.attack_power).to eq(50)
  end

end