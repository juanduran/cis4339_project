class Crew < ActiveRecord::Base

  belongs_to :employee
  belongs_to :job
  belongs_to :vehicle_checkout

end
