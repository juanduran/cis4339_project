class LineItem < ActiveRecord::Base

  belongs_to :service
  belongs_to :invoice
  validates :quantity, :service_id, presence: true

   def total_price
    service.price * quantity
  end

end
