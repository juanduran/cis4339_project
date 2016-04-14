class Service < ActiveRecord::Base
  has_many :line_items
  has_many :estimate_line_items
  accepts_nested_attributes_for :line_items, allow_destroy: true, reject_if: :all_blank
end
