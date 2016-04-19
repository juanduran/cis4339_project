class Invoice < ActiveRecord::Base

  belongs_to :project
  belongs_to :crew
  has_many :line_items, :dependent => :destroy
  belongs_to :customer

  accepts_nested_attributes_for :line_items, allow_destroy: true

    

  def totalprice
update_column(:invoice_total, line_items.to_a.sum {|i| i.total_price })
end
def totalprice2
line_items.to_a.sum {|i| i.total_price }
end

end
