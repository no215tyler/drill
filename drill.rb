# Rubyドリル01
# hash = {one: 1, two: 2, three: 3}

# puts hash.keys
# puts hash.values
# -------------------------
# Rubyドリル02
user_data = [
 {user: {profile: {name: 'George'}}},
 {user: {profile: {name: 'Alice'}}},
 {user: {profile: {name: 'Taro'}}},
]

user_data.each do |user|
  puts user[:user][:profile][:name]
end
# -------------------------
# Rubyドリル03