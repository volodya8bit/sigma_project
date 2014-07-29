require 'rails_helper'

describe Favorite do
  it "has a valid factory" do
    expect(FactoryGirl.build(:favorite)).to be_valid
  end
end
