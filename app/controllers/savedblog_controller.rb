class SavedblogController < ApplicationController
before_filter :authenticate_user!, :only =>[:new]
	def new
	 current_user.savedblogs.create(:blog_id=>params[:id])
	if current_user.role=="user"
         redirect_to home_userhome_path
	else
	 redirect_to home_advertiserhome_path
	end
	end

	def show
		@s=Savedblog.find(params[:id])
	end
	def index
		c=current_user.id
		b_id= Savedblog.where("user_id = #{c}").map(&:blog_id)
		@blog=Blog.find(b_id)
	end
		
end

