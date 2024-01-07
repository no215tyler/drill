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
# # Rubyドリル07
# require "date"

# today_week_num = Date.today.wday

# week_array = ["日曜日", "月曜日", "火曜日", "水曜日", "木曜日", "金曜日", "土曜日"]
# case today_week_num
# when 5
#   puts "今日は#{week_array[today_week_num]}だ!!!"
# else
#   puts "今日は#{week_array[today_week_num]}"
# end
# -------------------------
# # Rubyドリル08
# a = 0
# b = 0
# unless a + b <= 0
#   puts "計算結果は0より大きいです"
# end
# -------------------------
# Rubyドリル09
# result = 0
# 10.times do |num|
#   result += (num + 1)
# end
# puts result
# -------------------------
# Rubyドリル10
# def search(target_num, input)
#   input.each_with_index do |num, i|
#     if num == target_num
#       puts "#{i + 1}番目にあります"
#       exit
#     else
#     end
#   end
#   puts "その数は含まれていません"
# end

# input = [3, 5, 9 ,12, 15, 21, 29, 35, 42, 51, 62, 78, 81, 87, 92, 93]
# # 呼び出し例
# search(7, input)
# -------------------------
# Rubyドリル11
# def check_name(str) 
#   case 
#   when str.include?(" ")
#     puts "!エラー!空白は登録できません"
#   when str.include?(".")
#     puts "!エラー!記号は登録できません"
#   else
#     puts "登録が完了しました"
#   end
# end

# puts "登録したい名前を入力してください(例)YamadaTaro"
# str = gets.chomp
# check_name(str)
# -------------------------
# Rubyドリル12
# input = gets.to_i

# if input <= 0
#   puts "0以下の数字です"
# elsif input <= 10
#   puts "10以下の数字です"
# else
#   puts "10より大きい数字です"
# end
# -------------------------
# Rubyドリル13
# fruits_price = [["apple", [200, 250, 220]], ["orange", [100, 120, 80]], ["melon", [1200, 1500]]]

# fruits_price.each do |fruits|
#   price = 0
#   fruits[1].each do |fruit_price|
#     price += fruit_price
#   end
#   puts "#{fruits[0]}の合計金額は#{price}円です"
# end
# -------------------------
# Rubyドリル14
def in1to10(num, outside_mode)
  if outside_mode
    puts "True"
  elsif num >= 1 && num <= 10
    puts "True"
  else
    puts "False"
  end
end

in1to10(5,false)
in1to10(11,false) 
in1to10(11,true)