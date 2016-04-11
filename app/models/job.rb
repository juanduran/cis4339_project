class Job < ActiveRecord::Base

  belongs_to :crew
  belongs_to :project
  has_many :invoices
  has_many :line_items

end
