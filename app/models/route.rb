class Route < ActiveRecord::Base
  has_many :stops
  has_many :runs
end
