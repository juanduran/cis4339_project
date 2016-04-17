class Invoice < ActiveRecord::Base

  belongs_to :project
  belongs_to :crew
  has_many :line_items, :dependent => :destroy
  belongs_to :customer

  accepts_nested_attributes_for :line_items, allow_destroy: true

validates :date, :customer_id, :crew_id, presence: true
end
