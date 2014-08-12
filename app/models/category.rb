class Category < ActiveRecord::Base
  has_many :recipes

  scope :search, ->(query) {where("title ~~* ?", query)}

  accepts_nested_attributes_for :recipes, allow_destroy: true

  validates :title, presence: true
  validates :title, uniqueness: true
  validates_associated :recipes
end
