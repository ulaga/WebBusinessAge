class Blog < ActiveRecord::Base
	has_many :users, :through => :savedblogs
	#belongs_to :user
	
	# validations
	validates :title, :presence => true
	validates :short_description, :presence => true
	validates :description, :presence => true
	validates :author, :presence => true
	validates :category, :presence => true
end
