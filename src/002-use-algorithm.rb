require "jwt"
payload = { username: "fei", password: "1233", id: 122 }
hmac_secret = "my$ecretK3y"

token = JWT.encode payload, hmac_secret, "HS256"
decode_token = JWT.decode token, hmac_secret, true, { algorithm: "HS256" }

p token
p decode_token

# "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VybmFtZSI6ImZlaSIsInBhc3N3b3JkIjoiMTIzMyIsImlkIjoxMjJ9.RHum5Zx6eQz2dKh5iNMfNrnmfg2E8-u3Jw5fME7JYPI"
# [{"username"=>"fei", "password"=>"1233", "id"=>122}, {"alg"=>"HS256"}]
