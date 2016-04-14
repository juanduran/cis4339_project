class EstimateLineItem < ActiveRecord::Base

  belongs_to :service
  belongs_to :estimate

end
