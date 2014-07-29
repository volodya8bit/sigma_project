class Recipe < ActiveRecord::Base
  belongs_to :category
  belongs_to :parsers
  has_many :favorite
end
