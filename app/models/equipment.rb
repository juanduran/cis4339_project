class Equipment < ActiveRecord::Base
has_many :equipment_checkouts
accepts_nested_attributes_for :equipment_checkouts, allow_destroy: true, reject_if: :all_blank
end
