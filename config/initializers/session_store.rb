# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_NorthernStar_session',
  :secret      => 'b43afc4dc78658b4eaf11b370001c4efbf5f7fe32d58274e3c55c5b6b1e0ccf46bb90c55da56dafb246991a6d3c62bf25ec14450548c3e09617d1f3d6b737446'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
