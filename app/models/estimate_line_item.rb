class EstimateLineItem < ActiveRecord::Base

  belongs_to :service
  belongs_to :estimate
  validates :quantity, presence: true
end
