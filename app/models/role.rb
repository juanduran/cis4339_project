class Role < ActiveRecord::Base

  has_many :employees
  accepts_nested_attributes_for :employees, allow_destroy: true, reject_if: :all_blank
  validates :last_name, :first_name, :position, :phone_number, :wage, presence: true
  def admin?
    self.role.name == "Admin"
  end


end
