class Employee < ActiveRecord::Base

  belongs_to :role
  belongs_to :crew
  has_many :equipment_checkouts



end
