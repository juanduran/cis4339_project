class Estimate < ActiveRecord::Base

  belongs_to :customer
  has_many :estimate_line_items

end
