require 'spec_helper'

describe "Leadership::WardCouncilRepresentatives" do
  describe "GET /leadership_ward_council_representatives" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get leadership_ward_council_representatives_path
      response.status.should be(200)
    end
  end
end
