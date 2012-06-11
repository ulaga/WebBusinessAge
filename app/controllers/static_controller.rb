class StaticController < ApplicationController

	def logout
		
	end
	def about
	end
	def contactus
		@c=Contactus.new
		@c=Contactus.create(params[:contactus])
	if @c.save
		Contact.sendmail(@c.email,@c.subject).deliver

		redirect_to home_userhome_path
	end
	end
	def advertise
	end

end
