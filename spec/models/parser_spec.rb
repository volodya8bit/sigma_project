require 'rails_helper'

describe Parser do
  it "has a valid factory" do
    expect(FactoryGirl.build(:parser)).to be_valid
  end

  it {is_expected.to have_many(:recipes)}
end
