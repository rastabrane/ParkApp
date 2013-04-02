class Court < ActiveRecord::Base
  attr_accessible :name, :players
  
  has_many :check_ins

end
