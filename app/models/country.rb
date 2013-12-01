class Country < ActiveRecord::Base
  attr_accessible :name
  
  # Associations
  has_many :states
end
