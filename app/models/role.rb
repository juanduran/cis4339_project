class Role < ActiveRecord::Base
  has_many :users


  def admin?
    self.role.name == "Admin"
  end


end
