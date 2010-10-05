class ApplicationController < ActionController::Base
  before_filter :set_time_zone
  USER_NAME, PASSWORD = "admin", "secret"
  protect_from_forgery
  
  private
  
    def set_time_zone
      Time.zone = TimeZone.first.time_zone
    end
  
    def authenticate
    	authenticate_or_request_with_http_basic do |user_name, password|
    		user_name == USER_NAME && password == PASSWORD
		end
  end
end
