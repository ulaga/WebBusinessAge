require 'spec_helper'

describe Blog do
  
	before(:each) do
		@blog = Blog.new(:id => "",:title =>"blog1", :short_description => "short description", :description => "description", :author => "ulaganathan", :user_id => "", :date => "11/06/2012", :category => "business")
	end
	 it { should have_many(:users).through(:savedblogs)}
	 it { should have_many(:savedblogs)}
	
	

	
	it{should validate_presence_of(:title)}
	it{should validate_presence_of(:short_description)}
	it{should validate_presence_of(:description)}
	it{should validate_presence_of(:author)} 
	it{should validate_presence_of(:category)}
end
