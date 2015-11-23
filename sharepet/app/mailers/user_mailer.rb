class UserMailer < ActionMailer::Base
  default from: "sharepetdas@yahoo.com.br"

  def welcome_email(user)
    @user = user
    mail(:to => user.email, :subject => "Welcome to Sharepet!")
  end
end
