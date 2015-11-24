class UserMailer < ActionMailer::Base
  default from: "sharepet3@gmail.com"

  def sharingPetMail(animal, email)
  	@animal = animal
  	if mail
  		mail(:to=> email, :subject => "Your pet has been shared!")
  	end
  end

  def welcomeEmail(user)
    @user = user
    if user.email
      mail(:to => user.email, :subject => "Welcome to Sharepet!")
    end
  end
end
