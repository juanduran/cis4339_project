class Role < ActiveRecord::Base

  belongs_to :employee


  def admin?
    self.role.name == "Admin"
  end


end
