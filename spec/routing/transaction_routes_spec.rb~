require "spec_helper"
describe TransactionController do
	describe "routing" do
		it "routes to #new" do
			get("/transaction/new").should route_to("transaction#new")
		end
		it "routes to #create" do
			get("/transaction/create").should route_to("transaction#create")
		end
		it "routes to #show" do
			get("/transaction/show").should route_to("transaction#show")
		end
	end

end

