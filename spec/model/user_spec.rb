require 'spec_helper'

describe User do
  
	before(:each) do
		@user = User.new(:id => "", :firstname => "nata",
		:lastname => "raj",
		:g_location => "india", :level_in_business => "beginner", 
		:area_of_interest => "business", :linkedin_url => "raj_linkedin", 
		:twitter_url => "raj_twitter", :social_url => "raj_facebook", 
		:contribution => "raj", :alternate_email => "raj",  
		:company => "raj enterprises", :address => "7,buddhar street",  
		:city => "chennai", :state => "tamilnadu",  
		:country => "india", :phone => "8508435055",  
		:fax => "110770506", :company_site => "www.raj.com")
	end
	
	 it { should have_many(:savedblogs)}
	 it { should have_many(:listings)}
	 it { should have_many(:blogs).through(:savedblogs)}
	 it { should have_many(:listings).through(:savedlistings)}
	 it { should have_many(:transactions)}	



	
	it { should validate_presence_of(:email) }
	it { should validate_presence_of(:password) }
	
end

  	
	

