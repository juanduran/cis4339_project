class Estimate < ActiveRecord::Base

  belongs_to :customer
  has_many :estimate_line_items
  validates :description, :customer_id, presence: true

  accepts_nested_attributes_for :estimate_line_items, allow_destroy: true

  def totalprice
    update_column(:total, estimate_line_items.to_a.sum {|i| i.total_price })
  end
  def totalprice2
    estimate_line_items.to_a.sum {|i| i.total_price }
  end
end
