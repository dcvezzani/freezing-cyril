require "spec_helper"

describe Leadership::VisitingTeachersController do
  describe "routing" do

    it "routes to #index" do
      get("/leadership/visiting_teachers").should route_to("leadership/visiting_teachers#index")
    end

    it "routes to #new" do
      get("/leadership/visiting_teachers/new").should route_to("leadership/visiting_teachers#new")
    end

    it "routes to #show" do
      get("/leadership/visiting_teachers/1").should route_to("leadership/visiting_teachers#show", :id => "1")
    end

    it "routes to #edit" do
      get("/leadership/visiting_teachers/1/edit").should route_to("leadership/visiting_teachers#edit", :id => "1")
    end

    it "routes to #create" do
      post("/leadership/visiting_teachers").should route_to("leadership/visiting_teachers#create")
    end

    it "routes to #update" do
      put("/leadership/visiting_teachers/1").should route_to("leadership/visiting_teachers#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/leadership/visiting_teachers/1").should route_to("leadership/visiting_teachers#destroy", :id => "1")
    end

  end
end
