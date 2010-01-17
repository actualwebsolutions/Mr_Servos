# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_mr_servos_session',
  :secret      => 'c39d5de50c211c9a91800dfa97f5ed9d99d98d464f7781f31b674fae67398c7c4c8f1a8b1988bd4346c067f908d71031539a73fb4f8c722c315529e03bbb6707'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
