class Listing < ActiveRecord::Base
	has_many :users, :through => :savedlistings
	has_many :savedlistings

end
