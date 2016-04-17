class Invoice < ActiveRecord::Base

  belongs_to :project
  belongs_to :crew
  has_many :line_items
  belongs_to :customer
validates :date, :invoice_total, :terms, presence: true
end
