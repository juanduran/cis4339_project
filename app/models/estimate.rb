class Estimate < ActiveRecord::Base

  belongs_to :customer
  has_many :estimate_line_items
  validates :description, presence: true

  accepts_nested_attributes_for :estimate_line_items, allow_destroy: true

end
