require 'test_helper'

class ReportMailerTest < ActionMailer::TestCase
  
	def test_sharingPetMail
		animal = animals(:one)

		email = ReportMailer.sharingPetMail(animal).deliver
   		assert !ActionMailer::Base.deliveries.empty?

   		assert_equal "Thanks for sharing a pet!", email.subject
   		assert_match(/<h1>Thanks to have shared a pet!<\/h1>/, email.encoded)
    	assert_match(/Thanks for sharing and have a great day!/, email.encoded)
   		
	end

end
