class Accessory < ActiveRecord::Base
  attr_accessible :id, :image, :name
  mount_uploader :image, ImageUploader
end
