class ListingController < ApplicationController
uses_tiny_mce :options => {
                            :theme => 'advanced',
                            :theme_advanced_resizing => true,
                            :theme_advanced_resize_horizontal => false,
                            :plugins => %w{ table fullscreen }
                          }
def index
  @list = Listing.all.paginate :page => params[:page], :per_page => 2
 
end

def new_listing
  @list = Listing.new

end

def create_listing
  @list = Listing.new(params[:listing])
  @list.user_id=current_user.id
 	 if @list.save  
		redirect_to home_advertiserhome_path
	end  
end
def show_listing
   @list = Listing.find(params[:id])

end
end
