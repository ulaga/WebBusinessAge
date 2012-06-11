class WbaController < ApplicationController
before_filter :authenticate_user!
	def user
		if current_user.role == "user"
			 
			redirect_to home_userhome_path
		else
			redirect_to home_advertiserhome_path
		end
	end
 
	
		


end
