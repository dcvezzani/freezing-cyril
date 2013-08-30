require "spec_helper"

describe Family::ChildrenController do
  describe "routing" do

    it "routes to #index" do
      get("/family/children").should route_to("family/children#index")
    end

    it "routes to #new" do
      get("/family/children/new").should route_to("family/children#new")
    end

    it "routes to #show" do
      get("/family/children/1").should route_to("family/children#show", :id => "1")
    end

    it "routes to #edit" do
      get("/family/children/1/edit").should route_to("family/children#edit", :id => "1")
    end

    it "routes to #create" do
      post("/family/children").should route_to("family/children#create")
    end

    it "routes to #update" do
      put("/family/children/1").should route_to("family/children#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/family/children/1").should route_to("family/children#destroy", :id => "1")
    end

  end
end
