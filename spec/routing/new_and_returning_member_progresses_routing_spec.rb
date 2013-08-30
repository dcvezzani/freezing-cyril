require "spec_helper"

describe NewAndReturningMemberProgressesController do
  describe "routing" do

    it "routes to #index" do
      get("/new_and_returning_member_progresses").should route_to("new_and_returning_member_progresses#index")
    end

    it "routes to #new" do
      get("/new_and_returning_member_progresses/new").should route_to("new_and_returning_member_progresses#new")
    end

    it "routes to #show" do
      get("/new_and_returning_member_progresses/1").should route_to("new_and_returning_member_progresses#show", :id => "1")
    end

    it "routes to #edit" do
      get("/new_and_returning_member_progresses/1/edit").should route_to("new_and_returning_member_progresses#edit", :id => "1")
    end

    it "routes to #create" do
      post("/new_and_returning_member_progresses").should route_to("new_and_returning_member_progresses#create")
    end

    it "routes to #update" do
      put("/new_and_returning_member_progresses/1").should route_to("new_and_returning_member_progresses#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/new_and_returning_member_progresses/1").should route_to("new_and_returning_member_progresses#destroy", :id => "1")
    end

  end
end
