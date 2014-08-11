class Category < ActiveRecord::Base
  has_many :recipes

  scope :search, ->(query) {where("title like ?", query)}

  accepts_nested_attributes_for :recipes, allow_destroy: true

  validates :title, uniqueness: true
end
