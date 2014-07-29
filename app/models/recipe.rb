class Recipe < ActiveRecord::Base
  belongs_to :category
  belongs_to :parser
  has_many :favorite
end
