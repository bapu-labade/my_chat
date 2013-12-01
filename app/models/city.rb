class City < ActiveRecord::Base
  attr_accessible :name, :state_id
  
  # Associations
  belongs_to :state
end
