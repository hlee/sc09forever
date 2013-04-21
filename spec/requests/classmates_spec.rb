require 'spec_helper'

describe "Classmates" do
  describe "GET /classmates" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get classmates_path
      response.status.should be(200)
    end
  end
end
