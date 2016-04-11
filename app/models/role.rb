class Role < ActiveRecord::Base

  has_many :employees


  def admin?
    self.role.name == "Admin"
  end


end
