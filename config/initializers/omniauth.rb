OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do 
  provider :facebook, ENV['530051347046809'], ENV['0c442153fb23eb584208386fd2adbf47']
  
end