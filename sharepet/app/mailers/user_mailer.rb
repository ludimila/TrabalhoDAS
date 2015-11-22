class UserMailer < ActionMailer::Base
  default from: "sharepet3@gmail.com"

  def welcome_email(user)
    @user = user
    mail(:to => user.email, :subject => "Welcome to Sharepet!")
  end
end
