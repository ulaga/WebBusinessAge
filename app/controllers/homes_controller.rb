class HomesController < ApplicationController
  
before_filter :authenticate_user!
#user/advertiser before logged in
  def home
	list_and_blogs()
	display_by_category()	
	display_savedlistings()
	display_savedblogs()
  end	
#if user is loggged in
  def userhome	
	list_and_blogs()
	display_by_category()
	display_savedlistings()
	display_savedblogs()
  end
#if advertiser is logged in
  def advertiserhome
	list_and_blogs()
	display_savedlistings()
	display_savedblogs()
	my_listing()
  end
# to upgrade an user account to advertiser account
  def advertiser
	@ad=User.find(params[:id])
	if @ad.update_attributes(@ad.role = "advertiser")
	flash[:alert]="Your account has been upgraded to advertiser account!.."
	redirect_to home_advertiserhome_path
	end
 end
#Displaying all the categosies in the blogs
 def display_by_category
	@dis=Blog.select(:category).map(&:category).uniq
 end
#to list the blogs and lists
 def list_and_blogs
	@list=Listing.all
	@list = Listing.paginate :page => params[:page], :per_page => 2
	@blog=Blog.all
	@blog = Blog.paginate :page => params[:page], :per_page => 2
 end
#to display all saved listings of a user
 def display_savedlistings
	c=current_user.id
	l_id= Savedlisting.where("user_id = #{c}").map(&:listings_id)
	@sl=Listing.find(l_id).paginate :page => params[:page], :per_page => 2


 end
#to display all saved blogs of a user
 def display_savedblogs
	c=current_user.id
	b_id= Savedblog.where("user_id = #{c}").map(&:blog_id)
	@sb=Blog.find(b_id).paginate :page => params[:page], :per_page => 3
end
def my_listing
	@my=Listing.find_all_by_user_id(current_user.id).paginate :page => params[:page], :per_page => 2	

end

end
