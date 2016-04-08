class Customer < ActiveRecord::Base
  has_many :businesses
end
