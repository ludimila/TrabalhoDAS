require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  
  	def setup
		@user = User.new(name: "UserTest", email: "user@email.com", username: "user", password: "password")
	end
	
	def test_sharingPetMail
		animal = animals(:one)
		mailTo = "user@gmail.com"
		email = UserMailer.sharingPetMail(animal,mailTo).deliver
   		assert !ActionMailer::Base.deliveries.empty?

   		assert_equal "Your pet has been posted!", email.subject
   		assert_match(/<h1>Thanks to have posted a pet!<\/h1>/, email.encoded)
    	assert_match(/Thanks for posting and have a great day!/, email.encoded)
   		
	end

	def test_welcomeEmail

		email = UserMailer.welcomeEmail(@user).deliver
   		assert !ActionMailer::Base.deliveries.empty?

   		assert_equal "Welcome to Sharepet!", email.subject
   		assert_match(/<h1>Wellcome to sharepet #{@user.name}!<\/h1>/, email.encoded)
   		
	end

end