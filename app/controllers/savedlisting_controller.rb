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
		c=current_user.id
		l_id= Savedlisting.where("user_id = #{c}").map(&:listings_id)
		@list=Listing.paginate :page => params[:page], :per_page => 3
		@list=Listing.find(l_id)
		

	end
end
