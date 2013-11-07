class Product < ActiveRecord::Base
  attr_accessible :photos, :review_photos, :author, :buy_link, :description, :images, :like_num, :name, :own_num, :price, :status, :subtitle
  has_many :photos
  has_many :review_photos
end
