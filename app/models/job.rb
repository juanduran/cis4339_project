class Job < ActiveRecord::Base

  belongs_to :crew
  belongs_to :project
  has_many :invoices
  has_many :line_items
  accepts_nested_attributes_for :invoices, allow_destroy: true, reject_if: :all_blank
  accepts_nested_attributes_for :line_items, allow_destroy: true, reject_if: :all_blank
end
