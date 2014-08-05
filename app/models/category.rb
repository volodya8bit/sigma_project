class Category < ActiveRecord::Base
  has_many :recipes

  def self.search(query)
    where("title like ?", "%#{query}%")
  end

end
