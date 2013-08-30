require "spec_helper"

describe NewAndReturningMemberProgress::CheckListItemLabelsController do
  describe "routing" do

    it "routes to #index" do
      get("/new_and_returning_member_progress/check_list_item_labels").should route_to("new_and_returning_member_progress/check_list_item_labels#index")
    end

    it "routes to #new" do
      get("/new_and_returning_member_progress/check_list_item_labels/new").should route_to("new_and_returning_member_progress/check_list_item_labels#new")
    end

    it "routes to #show" do
      get("/new_and_returning_member_progress/check_list_item_labels/1").should route_to("new_and_returning_member_progress/check_list_item_labels#show", :id => "1")
    end

    it "routes to #edit" do
      get("/new_and_returning_member_progress/check_list_item_labels/1/edit").should route_to("new_and_returning_member_progress/check_list_item_labels#edit", :id => "1")
    end

    it "routes to #create" do
      post("/new_and_returning_member_progress/check_list_item_labels").should route_to("new_and_returning_member_progress/check_list_item_labels#create")
    end

    it "routes to #update" do
      put("/new_and_returning_member_progress/check_list_item_labels/1").should route_to("new_and_returning_member_progress/check_list_item_labels#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/new_and_returning_member_progress/check_list_item_labels/1").should route_to("new_and_returning_member_progress/check_list_item_labels#destroy", :id => "1")
    end

  end
end
