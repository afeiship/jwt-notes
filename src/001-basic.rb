require "jwt"

payload = { data: "test", username: "fei", password: "123abcdefuac" }

# IMPORTANT: set nil as password parameter
token = JWT.encode payload, nil, "none"
decoded_token = JWT.decode token, nil, false

p token
p decoded_token
# ruby src/001-basic.rb
