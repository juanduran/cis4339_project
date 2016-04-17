class Role < ActiveRecord::Base

  has_many :employees
  accepts_nested_attributes_for :employees, allow_destroy: true, reject_if: :all_blank
  validates :name, :description, presence: true
  def admin?
    self.role.name == "Admin"
  end


end
