require 'rails_helper'

describe Recipe do
  it "has a valid factory" do
    expect(FactoryGirl.build(:recipe)).to be_valid
  end

  it {is_expected.to belong_to(:category)}
  it {is_expected.to belong_to(:parser)}
  it {is_expected.to have_many(:favorites)}
end
