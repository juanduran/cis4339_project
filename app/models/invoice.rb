class Invoice < ActiveRecord::Base

  belongs_to :project
  belongs_to :job
  belongs_to :customer

end
