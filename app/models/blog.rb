class Blog < ActiveRecord::Base
	has_many :users, :through => :savedblogs
	has_many :savedblogs
	
	# validations
	validates :title, :presence => true
	validates :short_description, :presence => true
	validates :description, :presence => true
	validates :author, :presence => true
	validates :category, :presence => true
end
