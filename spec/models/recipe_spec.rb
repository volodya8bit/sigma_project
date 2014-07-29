require 'rails_helper'

describe Recipe do
  it "has a valid factory" do
    expect(FactoryGirl.build(:recipe)).to be_valid
  end
end
