class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
#relationship with blogs
	#has_many :blogs
	has_many :blogs, :through => :savedblogs 
	has_many :savedblogs
#relatioship with advsponsoredlisting
	#has_many :listings
	has_many :listings, :through => :savedlistings
	has_many :savedlistings
# relationship with transaction
	has_many :transactions

apply_simple_captcha

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :firstname, :lastname, :g_location, :level_in_business, :area_of_interest, :linkedin_url, :twitter_url, :social_url, :contribution, :alternate_email, :company, :address, :city, :state, :country, :phone, :fax, :company_site

end
