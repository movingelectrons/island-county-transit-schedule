class Route < ActiveRecord::Base
  has_one :stop
  has_many :runs
end
