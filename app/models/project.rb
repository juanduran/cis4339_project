class Project < ActiveRecord::Base

  has_many :jobs
  has_many :invoices
accepts_nested_attributes_for :jobs, allow_destroy: true, reject_if: :all_blank
accepts_nested_attributes_for :invoices, allow_destroy: true, reject_if: :all_blank
validates :project_name, :description, presence: true
end
