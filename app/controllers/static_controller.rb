class StaticController < ApplicationController

	def logout
		
	end
	def about
	end
	
	def new
	 @c=Contactus.new
	end
	
	def create
	@c=Contactus.create(params[:contactus])
	if @c.save
	Contact.sendmail(@c).deliver
	redirect_to home_userhome_path
	end
       end


end
