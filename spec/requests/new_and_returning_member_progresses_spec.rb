require 'spec_helper'

describe "NewAndReturningMemberProgresses" do
  describe "GET /new_and_returning_member_progresses" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get new_and_returning_member_progresses_path
      response.status.should be(200)
    end
  end
end