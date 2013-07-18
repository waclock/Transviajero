class Trip < ActiveRecord::Base
  attr_accessible :viceversa,:activity, :destination, :observation, :origin, :passenger, :value
end
