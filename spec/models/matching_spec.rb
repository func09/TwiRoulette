require 'spec_helper'

describe Matching do
  before(:each) do
    @valid_attributes = {
      
    }
  end

  it "should create a new instance given valid attributes" do
    Matching.create!(@valid_attributes)
  end
end

# == Schema Information
#
# Table name: matchings
#
#  id         :integer         not null, primary key
#  uid        :string(255)     not null
#  created_at :datetime
#  updated_at :datetime
#

