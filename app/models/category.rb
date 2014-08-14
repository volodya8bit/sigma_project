class Category < ActiveRecord::Base
  has_many :recipes

#  scope :search, ->(query) { where('title like ?', query) }

  accepts_nested_attributes_for :recipes, allow_destroy: true

  default_scope -> { order('created_at ASC') }
  scope :search, ->( query ) { where('title like ?', "%#{ query }%") }

  validates :title, presence: true
  validates :title, uniqueness: true
  validates :title, length: {minimum: 3, maximum: 40}
  validates_associated :recipes
end
