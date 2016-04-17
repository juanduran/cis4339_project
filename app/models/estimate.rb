class Estimate < ActiveRecord::Base

  belongs_to :customer
  has_many :estimate_line_items
  validates :potential_customer, :terms, :description, :quantity, :total, presence: true

end
