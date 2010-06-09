class Matching < ActiveRecord::Base
  has_friendly_id :uid
  has_many :messages
  has_many :users, :through => :messages
end
