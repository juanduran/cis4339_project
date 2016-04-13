class Employee < ActiveRecord::Base

  belongs_to :role
  belongs_to :crew
  has_many :equipment_checkouts
  accepts_nested_attributes_for :equipment_checkouts, allow_destroy: true, reject_if: :all_blank
end	
