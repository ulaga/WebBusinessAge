# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

PriceDetails.create(:category => 'Business', :amount => 250 )
PriceDetails.create(:category => 'General', :amount => 300 )
PriceDetails.create(:category => 'marketing', :amount => 500 )
PriceDetails.create(:category => 'web developement', :amount => 1000 )
