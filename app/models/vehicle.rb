class Vehicle < ActiveRecord::Base

  has_many :vehicle_checkouts
  accepts_nested_attributes_for :vehicle_checkouts, allow_destroy: true, reject_if: :all_blank
  validates :vehicle_name, :vechile_location, presence: true
end
