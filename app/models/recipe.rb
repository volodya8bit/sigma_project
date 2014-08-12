class Recipe < ActiveRecord::Base
  belongs_to :category
  belongs_to :parser
  has_many :favorites

  def self.search(query)
    where("title like ?", "%#{query}%")
  end

  validates :title, :text, presence: true
  validates_associated :category
end
