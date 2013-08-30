require "spec_helper"

describe Leadership::WardCouncilRepresentativesController do
  describe "routing" do

    it "routes to #index" do
      get("/leadership/ward_council_representatives").should route_to("leadership/ward_council_representatives#index")
    end

    it "routes to #new" do
      get("/leadership/ward_council_representatives/new").should route_to("leadership/ward_council_representatives#new")
    end

    it "routes to #show" do
      get("/leadership/ward_council_representatives/1").should route_to("leadership/ward_council_representatives#show", :id => "1")
    end

    it "routes to #edit" do
      get("/leadership/ward_council_representatives/1/edit").should route_to("leadership/ward_council_representatives#edit", :id => "1")
    end

    it "routes to #create" do
      post("/leadership/ward_council_representatives").should route_to("leadership/ward_council_representatives#create")
    end

    it "routes to #update" do
      put("/leadership/ward_council_representatives/1").should route_to("leadership/ward_council_representatives#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/leadership/ward_council_representatives/1").should route_to("leadership/ward_council_representatives#destroy", :id => "1")
    end

  end
end
