module SessionsHelper
	def log_in(user)
		session[:user_id] = user.id
	end

	def current_user
		@current_user ||= User.where(id: session[:user_id]).first
	end

	def logged_in? 
		!current_user.nil?
	end
end
