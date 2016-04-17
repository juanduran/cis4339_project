class Estimate < ActiveRecord::Base

  belongs_to :customer
  has_many :estimate_line_items
  validates :potential_customer, :terms, :description, :quantity, :total, presence: true

  accepts_nested_attributes_for :estimate_line_items, allow_destroy: true

end
