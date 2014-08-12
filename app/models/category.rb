class Category < ActiveRecord::Base
  has_many :recipes

  def self.search(query)
    where("title like ?", "%#{query}%")
  end

  accepts_nested_attributes_for :recipes, allow_destroy: true

  validates :title, presence: true
  validates :title, uniqueness: true
  validates_associated :recipes
end
