class Message < ActiveRecord::Base
  belongs_to :user
  belongs_to :matching
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

