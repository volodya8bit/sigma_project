class Recipe < ActiveRecord::Base
  belongs_to :category
  belongs_to :parser
  has_many :favorites


  default_scope -> { order('created_at ASC') }
  scope :search, ->(query) { where("title ~~* ?", query) }

  validates :title, :text, presence: true
  validates :title, length: { minimum: 3, maximum: 40 }
end
