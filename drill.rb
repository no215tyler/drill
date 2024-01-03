# Rubyドリル01
# hash = {one: 1, two: 2, three: 3}

# puts hash.keys
# puts hash.values
# -------------------------
# Rubyドリル02
# user_data = [
#  {user: {profile: {name: 'George'}}},
#  {user: {profile: {name: 'Alice'}}},
#  {user: {profile: {name: 'Taro'}}},
# ]

# user_data.each do |user|
#   puts user[:user][:profile][:name]
# end
# -------------------------
# Rubyドリル03
scores = {japanese_score: 80, english_score: 50, math_score: 70}
average_score = scores.values.reduce(:+) / scores.length

puts "3教科の平均点は#{average_score}点です。"
