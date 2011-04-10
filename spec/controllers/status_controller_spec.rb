require 'spec_helper'

describe StatusController do
  before do
    @time_now = Time.parse("2011-01-02T01:04:02Z")
    @date_now = @time_now.to_date
    Time.stub!(:now).and_return(@time_now)
  end
  
  describe "POST 'disappear'" do
    it "should redirect" do
      post :disappear
      response.should redirect_to(root_path)
    end
    
    context "when no status for today exists" do
      it "creates a new status" do
        post :disappear
        assigns[:status].should_not be_nil
        assigns[:status].should_not be_changed
      end
      it "assigns todays date" do
        post :disappear
        assigns[:status].date.should == @time_now.to_date
      end
    end
    
    context "when a status for today exists" do
      before do
        @status = Factory(:status, :date => @date_now, :disappeared_at => @time_now)
      end
      it "fetches the current status" do
        post :disappear
        assigns[:status].should == @status
      end
      it "updates disappeared_at" do
        post :disappear
        assigns[:status].disappeared_at.should == @time_now
      end
    end
  end
  
  describe "POST 'survived'" do
    it "should set the date" do
      post :survived, :id => 1
      assigns[:status].date.should == @date_now
    end
  end
  
  describe "POST 'birth" do
    context "when no status for today exists" do
      it "creates a new status" do
        post :birth
        assigns[:status].should_not be_nil
        assigns[:status].should_not be_changed
      end
      it "should set the date" do
        post :birth, :id => 1
        assigns[:status].date.should == @date_now
      end
      it "should redirect" do
        post :birth
        response.should redirect_to(root_path)
      end
    end
  end
  
end
