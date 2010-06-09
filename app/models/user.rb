class User < TwitterAuth::GenericUser
  has_friendly_id :login
  has_many :messages
  has_many :matchings, :through => :messages
end
