class CheckIn < ActiveRecord::Base
  attr_accessible :court_id, :how_many
  
  
  belongs_to :court
  belongs_to :user
end
