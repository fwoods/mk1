class ReviewPhoto < ActiveRecord::Base
  attr_accessible :product_id, :photofile
  belongs_to :product
  has_attached_file :photofile, :styles => {:nomal => "400x400>", :thumb => "100x100>"}, :default_url => "/images/:style/missing.png"
end
