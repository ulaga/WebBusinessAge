class SavedlistingController < ApplicationController
before_filter :authenticate_user!, :only =>[:new]
	def new
	 current_user.savedlistings.create(:listings_id=>params[:id])
		if current_user.role=="user"
			redirect_to home_userhome_path
		else
			redirect_to home_advertiserhome_path
		end
	end

	def show
		@s=Savedlisting.find(params[:id])
	end
	def index
		@list=current_user.listings
		

	end
end
