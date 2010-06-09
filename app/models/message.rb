class Message < ActiveRecord::Base
  belongs_to :user
  belongs_to :matching
  
  named_scope :yet, :conditions => ['matched = ?', false]
  
  class << self
    
    # マッチングする
    def match_all
      logger.info "Start matching #{yet.count} messages.(#{Time.now})"
      arr = yet
      until arr.empty?
        a = arr.slice!(rand(arr.size - 1))
        b = arr.slice!(rand(arr.size - 1))
        match = Matching.create
        transaction do
          a.matching = match
          a.matched = true
          a.matched_at = Time.now
          a.save
          b.matching = match
          b.matched = true
          b.matched_at = Time.now
          b.save
        end
      end
      logger.info "Finished matching.(#{Time.now})"
    end
    
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

