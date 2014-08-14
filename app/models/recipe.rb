class Recipe < ActiveRecord::Base
  belongs_to :category
  belongs_to :parser
  has_many :favorites


  default_scope -> { order('created_at ASC') }
  scope :search, ->( query ) { where('title like ? or text like ?', "%#{ query }%", "%#{ query }%") }


  validates :title, :text, presence: true
  validates :title, length: { minimum: 2, maximum: 40 }
end
