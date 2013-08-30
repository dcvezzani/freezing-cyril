require "spec_helper"

describe NewAndReturningMemberProgress::CheckListItemsController do
  describe "routing" do

    it "routes to #index" do
      get("/new_and_returning_member_progress/check_list_items").should route_to("new_and_returning_member_progress/check_list_items#index")
    end

    it "routes to #new" do
      get("/new_and_returning_member_progress/check_list_items/new").should route_to("new_and_returning_member_progress/check_list_items#new")
    end

    it "routes to #show" do
      get("/new_and_returning_member_progress/check_list_items/1").should route_to("new_and_returning_member_progress/check_list_items#show", :id => "1")
    end

    it "routes to #edit" do
      get("/new_and_returning_member_progress/check_list_items/1/edit").should route_to("new_and_returning_member_progress/check_list_items#edit", :id => "1")
    end

    it "routes to #create" do
      post("/new_and_returning_member_progress/check_list_items").should route_to("new_and_returning_member_progress/check_list_items#create")
    end

    it "routes to #update" do
      put("/new_and_returning_member_progress/check_list_items/1").should route_to("new_and_returning_member_progress/check_list_items#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/new_and_returning_member_progress/check_list_items/1").should route_to("new_and_returning_member_progress/check_list_items#destroy", :id => "1")
    end

  end
end
