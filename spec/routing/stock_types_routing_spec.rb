require "rails_helper"

RSpec.describe StockTypesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/stock_types").to route_to("stock_types#index")
    end

    it "routes to #new" do
      expect(:get => "/stock_types/new").to route_to("stock_types#new")
    end

    it "routes to #show" do
      expect(:get => "/stock_types/1").to route_to("stock_types#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/stock_types/1/edit").to route_to("stock_types#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/stock_types").to route_to("stock_types#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/stock_types/1").to route_to("stock_types#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/stock_types/1").to route_to("stock_types#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/stock_types/1").to route_to("stock_types#destroy", :id => "1")
    end

  end
end