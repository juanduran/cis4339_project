class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  belongs_to :role

  validates_presence_of :name
  before_save :assign_role

  def assign_role
    self.role = Role.find_by name: "Regular" if self.role.nil?
  end

  def admin?
    self.role.name == "Admin"
  end

  def employee?
    self.role.name == "Employee"
  end

  def customer?
    self.role.name == "Customer"
  end

end
