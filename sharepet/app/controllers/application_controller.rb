class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper

	# def current_user
 #  	@current_user ||= User.find(session[:user_id]) if session[:user_id]
 #  	puts "Current user no app controller "
 #  	puts @current_user
 #  end

end
