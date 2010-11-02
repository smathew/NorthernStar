class Emailer < ActionMailer::Base
	def contact_email(app)
    #Setting the content of the email
    recipients  "smathew@shareone.com"
	#recipients  "nstarcu@nstarcu.org"
	from        "website@nstarcu.org"
	subject     "Message from Northern Star Contact Form"
	
	body :app => app
  end
end
