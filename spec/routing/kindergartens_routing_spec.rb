require "spec_helper"

describe KindergartensController do
  describe "routing" do

    it "routes to #index" do
      get("/kindergartens").should route_to("kindergartens#index")
    end

    it "routes to #new" do
      get("/kindergartens/new").should route_to("kindergartens#new")
    end

    it "routes to #show" do
      get("/kindergartens/1").should route_to("kindergartens#show", :id => "1")
    end

    it "routes to #edit" do
      get("/kindergartens/1/edit").should route_to("kindergartens#edit", :id => "1")
    end

    it "routes to #create" do
      post("/kindergartens").should route_to("kindergartens#create")
    end

    it "routes to #update" do
      put("/kindergartens/1").should route_to("kindergartens#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/kindergartens/1").should route_to("kindergartens#destroy", :id => "1")
    end

  end
end
