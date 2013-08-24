class Category < ActiveRecord::Base
  
  has_many :posts
  
  attr_accessible :name, :favorite
  
  validates :name, presence: true
  
  scope :favorite, where(favorite: true)
  
end