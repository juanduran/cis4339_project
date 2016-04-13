class Vehicle < ActiveRecord::Base

  has_many :vehicle_checkouts
  accepts_nested_attributes_for :vechile_checkouts, allow_destroy: true, reject_if: :all_blank
end
