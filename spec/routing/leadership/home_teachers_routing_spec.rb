require "spec_helper"

describe Leadership::HomeTeachersController do
  describe "routing" do

    it "routes to #index" do
      get("/leadership/home_teachers").should route_to("leadership/home_teachers#index")
    end

    it "routes to #new" do
      get("/leadership/home_teachers/new").should route_to("leadership/home_teachers#new")
    end

    it "routes to #show" do
      get("/leadership/home_teachers/1").should route_to("leadership/home_teachers#show", :id => "1")
    end

    it "routes to #edit" do
      get("/leadership/home_teachers/1/edit").should route_to("leadership/home_teachers#edit", :id => "1")
    end

    it "routes to #create" do
      post("/leadership/home_teachers").should route_to("leadership/home_teachers#create")
    end

    it "routes to #update" do
      put("/leadership/home_teachers/1").should route_to("leadership/home_teachers#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/leadership/home_teachers/1").should route_to("leadership/home_teachers#destroy", :id => "1")
    end

  end
end
