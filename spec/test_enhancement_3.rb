require_relative 'spec_helper'

describe Barracks do
  
  before :each do
    @barracks = Barracks.new
  end

    it "add lumber as a resource that barracks can handle" do
      expect(@barracks.lumber).to eq(500)
    end
end