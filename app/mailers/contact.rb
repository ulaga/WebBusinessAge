class Contact < ActionMailer::Base
  #default :to => "ulaganathan.pv@gmail.com"

	def sendmail(c)
		@c=c
	    mail(:from=>@c.email, :subject=>@c.subject, :to => "ulaganathan.pv@gmail.com")    
	end
end
