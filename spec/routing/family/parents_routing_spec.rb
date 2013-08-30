require "spec_helper"

describe Family::ParentsController do
  describe "routing" do

    it "routes to #index" do
      get("/family/parents").should route_to("family/parents#index")
    end

    it "routes to #new" do
      get("/family/parents/new").should route_to("family/parents#new")
    end

    it "routes to #show" do
      get("/family/parents/1").should route_to("family/parents#show", :id => "1")
    end

    it "routes to #edit" do
      get("/family/parents/1/edit").should route_to("family/parents#edit", :id => "1")
    end

    it "routes to #create" do
      post("/family/parents").should route_to("family/parents#create")
    end

    it "routes to #update" do
      put("/family/parents/1").should route_to("family/parents#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/family/parents/1").should route_to("family/parents#destroy", :id => "1")
    end

  end
end
