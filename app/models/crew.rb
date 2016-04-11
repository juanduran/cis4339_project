class Crew < ActiveRecord::Base

  has_many :employees
  has_many :jobs
  has_many :vehicle_checkouts

end
