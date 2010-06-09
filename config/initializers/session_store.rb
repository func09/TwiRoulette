# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_twiroulette_session',
  :secret      => '90c589cefd09942b95924f135c5318155ac33c37f623e528fd775feb6bb40e87305a4912abf81e5625b651e0cee15c0ec20edc9b75c9d7c0096bf0ed98febaea'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
