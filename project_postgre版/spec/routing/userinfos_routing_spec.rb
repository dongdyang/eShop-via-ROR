require "rails_helper"

RSpec.describe UserinfosController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/userinfos").to route_to("userinfos#index")
    end

    it "routes to #new" do
      expect(:get => "/userinfos/new").to route_to("userinfos#new")
    end

    it "routes to #show" do
      expect(:get => "/userinfos/1").to route_to("userinfos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/userinfos/1/edit").to route_to("userinfos#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/userinfos").to route_to("userinfos#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/userinfos/1").to route_to("userinfos#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/userinfos/1").to route_to("userinfos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/userinfos/1").to route_to("userinfos#destroy", :id => "1")
    end

  end
end
