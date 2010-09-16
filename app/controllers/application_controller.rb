class ApplicationController < ActionController::Base
  USER_NAME, PASSWORD = "admin", "secret"
  protect_from_forgery
  
  private
  
    def authenticate
    	authenticate_or_request_with_http_basic do |user_name, password|
    		user_name == USER_NAME && password == PASSWORD
		end
  end
end
