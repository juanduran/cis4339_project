class Customer < ActiveRecord::Base
  belongs_to :business
  has_many :estimates
  has_many :invoices
end
