class ReportMailer < ActionMailer::Base
  default from: "sharepet3@gmail.com"

  def wellcomeMail(user)
  	@user = user
  	mail(:to=> user.mail, :subject=>"Wellcome to SharePet!")
  end
  
end
