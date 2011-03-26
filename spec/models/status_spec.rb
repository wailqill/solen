require 'spec_helper'

describe Status do
  before do
    Timecop.travel Chronic.parse "24 dec 2010 at noon"
  end
  after do
    Timecop.return
  end
  def valid_attributes
    { :date => Date.today }
  end
  
  context "is invalid" do
    subject { Status.new }
    it { should_not be_valid }
  end
  
  context "is valid" do
    subject { Status.new valid_attributes }
    it { should be_valid }
  end
end
