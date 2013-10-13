class Product < ActiveRecord::Base
  attr_accessible :author, :buy_link, :description, :images, :like_num, :name, :own_num, :price, :status, :subtitle
end
