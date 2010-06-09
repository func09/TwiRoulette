require 'forgery'
class Matching < ActiveRecord::Base
  
  UID_LENGTH = 6
  
  has_friendly_id :uid
  has_many :messages
  has_many :users, :through => :messages
  
  default_value_for :uid do
    Forgery(:basic).text(:at_least => UID_LENGTH, :at_most => UID_LENGTH)
  end

end
