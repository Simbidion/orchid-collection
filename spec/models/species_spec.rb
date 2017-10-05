require 'rails_helper'

RSpec.describe Species, type: :model do
  
  it "should contain a scientific species name" do
    expect(Species.new(sci_name: '')).to be_invalid
    expect(Species.new(sci_name: 'Bi nomial')).to be_valid
  end

  it "should contain a two part scientific name" do
    expect(Species.new(sci_name: 'Bi nomial')).to be_valid
    expect(Species.new(sci_name: 'Mononomial')).to be_invalid
  end


end
