class Parser < ActiveRecord::Base
  has_many :recipes

  scope :search, -> (query) {where("title ~~* ?", query)}

end
