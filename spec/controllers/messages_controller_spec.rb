require 'spec_helper'

describe MessagesController do

  #Delete these examples and add some real ones
  it "should use MessagesController" do
    controller.should be_an_instance_of(MessagesController)
  end


  describe "GET 'new'" do
    it "should be successful" do
      get 'new'
      response.should be_success
    end
  end

  describe "GET 'show'" do
    it "should be successful" do
      get 'show'
      response.should be_success
    end
  end
end
