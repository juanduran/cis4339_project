class Business < ActiveRecord::Base
  has_many :customers
  accepts_nested_attributes_for :customers, allow_destroy: true, reject_if: :all_blank
  validates :business_name, :phone_number, :email, :street_address, :city, :state, :zip, presence: true
end
