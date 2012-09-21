class Droparea < ActiveRecord::Base
  belongs_to :vehicle
  belongs_to :accessory
  attr_accessible :height, :left, :top, :width, :accessory_id, :vehicle_id, :style
end
