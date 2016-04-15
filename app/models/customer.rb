class Customer < ActiveRecord::Base
  belongs_to :business
  has_many :estimates
  has_many :invoices
  accepts_nested_attributes_for :estimates, allow_destroy: true, reject_if: :all_blank
  accepts_nested_attributes_for :invoices, allow_destroy: true, reject_if: :all_blank
end
