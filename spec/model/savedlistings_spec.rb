require 'spec_helper'

describe Savedlisting do
  
	before(:each) do
		@blog = Savedlisting.new(:id => "",:user_id => "", :listing_id => "")
	end
	 it { should belong_to(:user)}
	 it { should belong_to(:listing)}
	

end
	
