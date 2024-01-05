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
# scores = {japanese_score: 80, english_score: 50, math_score: 70}
# average_score = scores.values.reduce(:+) / scores.length

# puts "3教科の平均点は#{average_score}点です。"
# -------------------------
# Rubyドリル04
# class Article
#   attr_accessor :author, :title, :content
#   def initialize(author, title, content)
#     @author = author
#     @title = title
#     @content = content
#   end
# end

# article = Article.new("阿部", "Rubyの素晴らしさについて", "Awesome Ruby!")
# puts "著者: #{article.author}"
# puts "タイトル: #{article.title}"
# puts "本文: #{article.content}"
# -------------------------
# Rubyドリル05
#メソッド定義時に仮引数を設定できていないため
# price = 300

# def calculate_price_with_tax(price)
#   tax = 0.1
#   return price + price * tax
# end

# calculate_price_with_tax(price)
# -------------------------
# Rubyドリル06
# def get_weather_forecast(weather)
#   puts "明日の天気は#{weather}です"
# end

# get_weather_forecast("晴れ")
# -------------------------
# Rubyドリル07
require "date"

today_week_num = Date.today.wday

week_array = ["日曜日", "月曜日", "火曜日", "水曜日", "木曜日", "金曜日", "土曜日"]
case today_week_num
when 5
  puts "今日は#{week_array[today_week_num]}だ!!!"
else
  puts "今日は#{week_array[today_week_num]}"
end
