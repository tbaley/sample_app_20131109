# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
# SampleApp::Application.config.secret_key_base = '060d345d337dff9365047521be5fbb9d71c6db70ef1059a7b2f230d18a5fade0d0b6ff461bad351cfed9e4f455c13707bde8a37ee025b8bb5da4e181d5d34aa3'




# Be sure to restart your server when you modify this file.
# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!
# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.
# Make sure your secret_key_base is kept private # if you're sharing your code publicly.
require 'securerandom'
def secure_token
  token_file = Rails.root.join('.secret')
  
  if File.exist?(token_file)
    # Use the existing token.
    File.read(token_file).chomp
  else
    # Generate a new token and store it in token_file.
    token = SecureRandom.hex(64)
    File.write(token_file, token)
    token
end end

SampleApp::Application.config.secret_key_base = secure_token
