class ReportMailer < ActionMailer::Base
  default from: "sharepet3@gmail.com"

  def sharingPetMail(animal)
  	@animal = animal
  	mail(:to=> "user_email@example.com", :subject=>"Thanks for sharing a pet!")
  end

end
