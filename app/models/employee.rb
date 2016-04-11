class Employee < ActiveRecord::Base

  has_many :roles
  has_many :crews



end
