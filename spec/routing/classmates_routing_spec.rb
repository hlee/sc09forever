require "spec_helper"

describe ClassmatesController do
  describe "routing" do

    it "routes to #index" do
      get("/classmates").should route_to("classmates#index")
    end

    it "routes to #new" do
      get("/classmates/new").should route_to("classmates#new")
    end

    it "routes to #show" do
      get("/classmates/1").should route_to("classmates#show", :id => "1")
    end

    it "routes to #edit" do
      get("/classmates/1/edit").should route_to("classmates#edit", :id => "1")
    end

    it "routes to #create" do
      post("/classmates").should route_to("classmates#create")
    end

    it "routes to #update" do
      put("/classmates/1").should route_to("classmates#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/classmates/1").should route_to("classmates#destroy", :id => "1")
    end

  end
end
