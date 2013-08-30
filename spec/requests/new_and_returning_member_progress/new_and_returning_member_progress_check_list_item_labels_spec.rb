require 'spec_helper'

describe "NewAndReturningMemberProgress::CheckListItemLabels" do
  describe "GET /new_and_returning_member_progress_check_list_item_labels" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get new_and_returning_member_progress_check_list_item_labels_path
      response.status.should be(200)
    end
  end
end
