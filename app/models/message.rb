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
          a.match!(match)
          b.match!(match)
        end
      end
      logger.info "Finished matching.(#{Time.now})"
    end
    
  end
  
  # マッチさせる
  def match!(matching)
    self.matching = matching
    self.matched = true
    self.matched_at = Time.now
    self.save
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

