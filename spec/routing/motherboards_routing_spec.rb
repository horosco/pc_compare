require "spec_helper"

describe MotherboardsController do
  describe "routing" do

    it "routes to #index" do
      get("/motherboards").should route_to("motherboards#index")
    end

    it "routes to #new" do
      get("/motherboards/new").should route_to("motherboards#new")
    end

    it "routes to #show" do
      get("/motherboards/1").should route_to("motherboards#show", :id => "1")
    end

    it "routes to #edit" do
      get("/motherboards/1/edit").should route_to("motherboards#edit", :id => "1")
    end

    it "routes to #create" do
      post("/motherboards").should route_to("motherboards#create")
    end

    it "routes to #update" do
      put("/motherboards/1").should route_to("motherboards#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/motherboards/1").should route_to("motherboards#destroy", :id => "1")
    end

  end
end
