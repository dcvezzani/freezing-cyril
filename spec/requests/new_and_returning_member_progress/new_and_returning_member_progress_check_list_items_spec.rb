require 'spec_helper'

describe "NewAndReturningMemberProgress::CheckListItems" do
  describe "GET /new_and_returning_member_progress_check_list_items" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get new_and_returning_member_progress_check_list_items_path
      response.status.should be(200)
    end
  end
end
