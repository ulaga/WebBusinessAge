require 'spec_helper'

describe Savedblog do
  
	before(:each) do
		@blog = Savedblog.new(:id => "",:user_id => "", :blog_id => "")
	end
	 it { should belong_to(:user)}
	 it { should belong_to(:blog)}
	

end
	
