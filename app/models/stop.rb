class Stop < ActiveRecord::Base
  has_many :schedules
end
