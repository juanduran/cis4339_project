class Crew < ActiveRecord::Base

  has_many :employees
  has_many :invoices
  has_many :vehicle_checkouts
accepts_nested_attributes_for :vehicle_checkouts, allow_destroy: true, reject_if: :all_blank
accepts_nested_attributes_for :jobs, allow_destroy: true, reject_if: :all_blank
accepts_nested_attributes_for :employees, allow_destroy: true, reject_if: :all_blank
end
