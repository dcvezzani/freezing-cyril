require 'spec_helper'

describe "Leadership::HomeTeachers" do
  describe "GET /leadership_home_teachers" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get leadership_home_teachers_path
      response.status.should be(200)
    end
  end
end
