class Vehicle < ActiveRecord::Base
  attr_accessible :id, :image, :name
  mount_uploader :image, ImageUploader

  has_many :dropareas
end
