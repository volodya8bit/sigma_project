class Recipe < ActiveRecord::Base
  belongs_to :category
  belongs_to :parser
  has_many :favorites

  scope :search, ->(query) { where("title ~~* ?", query) }

  validates :title, :text, presence: true
  # validates_associated :category
end
