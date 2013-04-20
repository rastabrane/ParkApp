class Court < ActiveRecord::Base
  attr_accessible :name, :players
  
  has_many :check_ins
  
  
  def check_parse
      self.check_ins.each do |checkin|
      return checkin.how_many
    end
  end
  
  
  def check_time
     self.check_ins.each do |checkin|
      return (checkin.created_at).strftime('%m/%d/%y %I:%M%p')
    end
  end
  
  # def display_message
  #     self.messages.each do |message|
  #       return message.body
  #     end
  #   end
  
  # def message_time 
  #   self.messages.each do |message|
  #     return (message.created_at).strftime('%m/%d/%y %I:%M%p') 
  #   end
  # end
  
  # def message_author 
  #     self.messages.each do |message|
  #       user = User.find_by_id(message.user_id)
  #       return user.name
  #     end
  #   end

end
