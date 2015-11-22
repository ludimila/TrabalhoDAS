module SessionsHelper
	def log_in(user)
		session[:user_id] = user.id
	end

	def current_user
    if (user_id = session[:user_id])
    	@current_user ||= User.where(id: session[:user_id]).first
    elsif (user_id = cookies.signed[:user_id])
    	user = User.where(id: user_id).first
    	if user && user.authenticated?(cookies[:remember_token])
        	log_in user
        	@current_user = user
      	end
    	end
  	end

	def logged_in? 
		!current_user.nil?
	end

	def log_out
	    session.delete(:user_id)
	    @current_user = nil
	  end
end
