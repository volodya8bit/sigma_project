require 'rails_helper'

describe Favorite do
  it "has a valid factory" do
    expect(FactoryGirl.build(:favorite)).to be_valid
  end

  it {is_expected.to belong_to(:user)}
  it {is_expected.to belong_to(:recipe)}

end
