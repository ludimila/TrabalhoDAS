require 'test_helper'

class ReportMailerTest < ActionMailer::TestCase
  
	def test_sharingPetMail
		animal = animals(:one)

		email = ReportMailer.sharingPetMail(animal).deliver
   		assert !ActionMailer::Base.deliveries.empty?

   		assert_equal "Thanks for sharing a pet!", email.subject
   		
   		
	end

end
