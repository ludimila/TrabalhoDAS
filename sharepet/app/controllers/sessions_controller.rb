class SessionsController < ApplicationController
  # def new
  # end

  def create
  	user = User.where(username: params[:session][:username]).first
  	if user && user.authenticate(params[:session][:password])
  		#log the user in and redirect to the user's show page
  		log_in user
		redirect_to user
  	else
  		#create an error message
  		render 'new'
  	end
  end

  def destroy
    log_out
    redirect_to root_url
  end

  def log_in (user)
  	session[:user_id] = user.id
  end


  def current_user
  	@current_user ||= User.where(id: session[:user_id]).first
  end

  def logged_in?
    !current_user.nil?
  end

end
