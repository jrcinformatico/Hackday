require 'spec_helper'

describe ConferenciasController do

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end
  end

  describe "GET 'ponencias'" do
    it "returns http success" do
      get 'ponencias'
      response.should be_success
    end
  end

  describe "GET 'talleres'" do
    it "returns http success" do
      get 'talleres'
      response.should be_success
    end
  end

  describe "GET 'costos'" do
    it "returns http success" do
      get 'costos'
      response.should be_success
    end
  end

end
