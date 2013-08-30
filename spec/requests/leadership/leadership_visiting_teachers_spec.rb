require 'spec_helper'

describe "Leadership::VisitingTeachers" do
  describe "GET /leadership_visiting_teachers" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get leadership_visiting_teachers_path
      response.status.should be(200)
    end
  end
end
