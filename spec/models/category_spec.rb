require 'rails_helper'

describe Category do
  it "has a valid factory" do
    expect(FactoryGirl.build(:category)).to be_valid
  end
  it {is_expected.to have_many(:recipes)}
end
