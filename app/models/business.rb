class Business < ActiveRecord::Base
  has_many :customers
  accepts_nested_attributes_for :customers, allow_destroy: true, reject_if: :all_blank
end
