# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Schedule::Application.config.secret_key_base = '5fb290cfb55c170fc4a71a7e846ff3c03d0951cc8544a35568617b528863ea7838e414c1d1d311955c36f44474f61af63a0049f0c25315f8d2bd0cc8a9e80353'
