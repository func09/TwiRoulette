require 'spec_helper'

describe Message do
  before(:each) do
    @valid_attributes = {
      
    }
  end

  it "should create a new instance given valid attributes" do
    Message.create!(@valid_attributes)
  end
end

# == Schema Information
#
# Table name: messages
#
#  id          :integer         not null, primary key
#  user_id     :integer         not null
#  body        :string(255)     not null
#  matching_id :integer
#  matched     :boolean
#  matched_at  :datetime
#  created_at  :datetime
#  updated_at  :datetime
#

