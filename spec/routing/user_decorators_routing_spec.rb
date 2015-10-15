require "rails_helper"

RSpec.describe UserDecoratorsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/user_decorators").to route_to("user_decorators#index")
    end

    it "routes to #new" do
      expect(:get => "/user_decorators/new").to route_to("user_decorators#new")
    end

    it "routes to #show" do
      expect(:get => "/user_decorators/1").to route_to("user_decorators#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/user_decorators/1/edit").to route_to("user_decorators#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/user_decorators").to route_to("user_decorators#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/user_decorators/1").to route_to("user_decorators#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/user_decorators/1").to route_to("user_decorators#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/user_decorators/1").to route_to("user_decorators#destroy", :id => "1")
    end

  end
end
