class User < TwitterAuth::GenericUser
  has_many :messages
  has_many :matchings, :through => :messages
end
