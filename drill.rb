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
# def in1to10(num, outside_mode)
#   if outside_mode
#     puts "True"
#   elsif num >= 1 && num <= 10
#     puts "True"
#   else
#     puts "False"
#   end
# end

# in1to10(5,false)
# in1to10(11,false) 
# in1to10(11,true)
# -------------------------
# Rubyドリル15
# def output(input)
#   input.times do
#     puts "Hello!"
#   end
# end

# puts "何回表示させますか？"
# input = gets.to_i
# output(input)
# -------------------------
# Rubyドリル16
# class Fruit
#   def self.flesh
#     puts "採れたて新鮮な果実です"
#   end
 
#   def initialize(name, price)
#     @name = name
#     @price = price
#   end
 
#   def introduce
#     puts "#{@name}は#{@price}円です"
#   end
#  end
 
 
#  # 3つのインスタンスを生成してください
# apple = Fruit.new("リンゴ", 120)
# orange = Fruit.new("オレンジ", 200)
# strawberry = Fruit.new("イチゴ", 60)
 
#  # クラスメソッドを呼び出し、「採れたて新鮮な果実です」と表示してください
#  Fruit.flesh
#  # インスタンス毎にインスタンスメソッドを呼び出し、「【名前】は【価格】円です」と表示してください
#  apple.introduce
#  orange.introduce
#  strawberry.introduce
# -------------------------
# Rubyドリル17
# def missing_char(str, n)
#   string = str
#   string.slice!(n - 1)
#   puts string
# end

# missing_char('kitten', 1)
# -------------------------
# Rubyドリル18
# def police_trouble(a, b)
#   if (a && b) || (a == false && b == false)
#     puts "True"
#   else
#     puts "False"
#   end
# end

# police_trouble(true, true) # => true
# police_trouble(false, false) # => true
# police_trouble(true, false) # => false
# -------------------------
# Rubyドリル19
# def count_hi(str)
#   puts str.scan("hi").length
# end

# count_hi('abc hi ho') # → 1
# count_hi('ABChi hi') # → 2
# count_hi('hihi') # → 2
# -------------------------
# Rubyドリル20
# def count_code(str)
#   puts str.index("code") + 1
# end

# count_code("codexxcode") # → 1
# count_code("aaacodebbb") # → 4
# count_code("cozexxcode") # → 7
# -------------------------
# Rubyドリル21
# def parrot_trouble(talking, hour)
#   if talking && (hour > 20 || hour < 7 )
#     puts "NG"
#   else
#     puts "OK"
#   end
# end

# parrot_trouble(true, 6) # → NG
# parrot_trouble(true, 7) # → OK
# parrot_trouble(false, 6) # → OK
# parrot_trouble(false, 7) # → OK
# -------------------------
# Rubyドリル22
# def count_evens(num_ary)
#   result = 0
#   num_ary.each do |num|
#     if num.even?
#       result += 1
#     end
#   end
#   puts result
# end

# count_evens([2, 1, 2, 3, 4]) # → 3
# count_evens([2, 2, 0]) # → 3
# count_evens([1, 3, 5]) # → 0
# -------------------------
# Rubyドリル23
# def array123(nums)
#   if nums.include?(1) && nums.include?(2) && nums.include?(3)
#     puts "True"
#   else
#     puts "False"
#   end
# end
# array123([1, 1, 2, 3, 1]) # → True
# array123([1, 2, 4, ]) # → False
# array123([1, 1, 2, 1, 4, 3]) # → True
# -------------------------
# Rubyドリル24
# def sleep_in(is_weekday, is_vacation)
#   if is_weekday && !is_vacation
#     puts false
#   else
#     puts true
#   end
# end

# sleep_in(false, false) # → true
# sleep_in(true, false) # → false
# sleep_in(false, true) # → true
# sleep_in(true, true) # → true
# -------------------------
# Rubyドリル25
# def addition(a, b)
#   # 10の位と1の位の数字に対して、足し算を行う
#   a + b
# end

# def multiplication(a,b)
#   # 10の位と1の位の数字に対して、掛け算を行う
#   a * b
# end

# def slice_num(num)
#   # 10の位の計算
#   ten = (num / 10) % 10
#   # 1の位の計算
#   one = num % 10
#   return ten, one
# end

# puts "二桁の整数を入力してください"
# input = gets.to_i

# X, Y = slice_num(input)
# #  additionメソッドにX,Yを引数として渡し、処理結果を変数add_resultに代入する。
# add_result = addition(X, Y)
# #  multiplicationメソッドにX,Yを引数として渡し、処理結果を変数multiple_resultに代入する。
# multiple_result = multiplication(X, Y)
# puts "足し算結果と掛け算結果の合計値は#{add_result + multiple_result}です"
# ------------------------
# Rubyドリル26
# def extra_end(str)
#   str = str.slice(-2, 2)
#   puts str * 3
# end

# extra_end('Hello') # → 'lololo'
# extra_end('ab') # → 'ababab'
# extra_end('Hi') # → 'HiHiHi'
# -------------------------
# Rubyドリル27
# def num(a, b, c)
#   ab = a + b
#   if c <= 3
#     puts ab / c
#   else
#     puts ab * c
#   end
# end

# num(1,5,3) # → 2
# num(1,5,5) # → 30
# -------------------------
# Rubyドリル28
# def calculate_points(amount, is_birthday)
#   cal_point = 0
#   if amount <= 999
#     cal_point = (amount * 0.03).floor
#   else
#     cal_point = (amount * 0.05).floor
#   end

#   if is_birthday
#     cal_point *= 5
#   end
#   puts "ポイントは#{cal_point}点です"
# end


# calculate_points(500, false) # → ポイントは15点です
# calculate_points(2000, false) # → ポイントは100点です
# calculate_points(3000, true) # → ポイントは750点です
# -------------------------
# Rubyドリル29
# def fizz_buzz
#   num = 0
#   while num <= 100 
#     if num % 15 == 0
#       puts "FizzBuzz"
#     elsif num % 5 == 0
#       puts "Buzz"
#     elsif num % 3 == 0
#       puts "Fizz"
#     else
#       puts num
#     end
#     num += 1
#   end
# end

# fizz_buzz
# -------------------------
# Rubyドリル30
# def fizzbuzz(max_num)
#   (1..max_num).each do |num|
#     if num % 15 == 0
#       puts "FizzBuzz"
#     elsif num % 5 == 0
#       puts "Buzz"
#     elsif num % 3 == 0
#       puts "Fizz"
#     else
#       puts num
#     end
#   end
# end

# puts 'いくつまで数えますか？'
# num = gets.to_i
# fizzbuzz(num)
# -------------------------
# Rubyドリル31
# def end_other(a, b)
#   a_down_str = a.downcase
#   b_down_str = b.downcase
#   a_match = a.slice(-(b.length)..-1)
#   b_match = b.slice(-(a.length)..-1)
#   if a_down_str == b_match || b_down_str == a_match
#     puts true
#   else
#     puts false
#   end
# end

# # 呼び出し例
# end_other('Hiabc', 'abc')
# -------------------------
# Rubyドリル32
# エラーが起きた原因
  # => 「self」メソッドが不要


# 正しいソースコード
# class Student
#   def set_name(name)
#     @name = name
#   end

#   def introduce
#     puts "私の名前は#{@name}です。"
#   end
# end

# student = Student.new
# student.set_name("山田太郎")
# student.introduce
# -------------------------
# Rubyドリル33
# def left2(str)
#   str_buf = str.slice!(0..1)
#   puts str << str_buf
# end

# left2("Hello") # → lloHe
# left2("java") # → vaja
# left2("Hi") # → Hi
# -------------------------
# Rubyドリル34
# def array_count9(nums)
#   result_count = nums.count(9)
#   puts "配列の中には9が#{result_count}個です"
# end

# array_count9([1, 2, 9]) # → 配列の中には9が1個です
# array_count9([1, 9, 9]) # → 配列の中には9が2個です
# array_count9([1, 9, 9, 3, 9]) # → 配列の中には9が3個です
# -------------------------
# Rubyドリル35
# def near_ten(num)
#   near_range = [0, 1, 2, 8, 9]
#   remnant = num % 10
#   if near_range.include?(remnant)

# near_ten(12) # →True
# near_ten(17) # →False
# near_ten(19) # →True
# -------------------------
# Rubyドリル36
# def withdraw(balance, amount)
#   fee = 110 # 手数料
#   if balance <= (amount + fee)
#     puts "残高不足です"
#   else
#     balance = balance - (amount + fee)
#     puts "#{amount}円引出しました。預金残高は#{balance}円です。"
#   end
# end

# balance = 100000 # 残高
# puts "いくら引き落としますか？（手数料110円かかります）"
# money = gets.to_i
# withdraw(balance, money)
# -------------------------
# Rubyドリル37
# def lone_sum(ary)
#   sum_result = 0
#   ary.each do |num|
#     if ary.count(num) < 2
#       sum_result += num
#     end
#   end
#   puts sum_result
# end

# # 呼び出し例
# lone_sum([1, 2, 3]) # → 6
# lone_sum([3, 2, 3]) # → 2
# lone_sum([3, 3, 3]) # → 0
# -------------------------
# Rubyドリル38
# def binary_search(ary, target_num)
#   number_of_elements = ary.length
#   center = number_of_elements / 2
#   index = center
#   null_flg = false
#   if target_num >= ary[index - 1]
#     up_direction(ary, index, number_of_elements, target_num)
#   elsif target_num < ary[index - 1]
#     down_direction(ary, index, target_num)
#   end
# end

# def up_direction(ary, index, number_of_elements, target_num)
#   while index < number_of_elements
#     if ary[index - 1] == target_num
#       return puts "#{target_num}は配列の#{index}番目に存在します"
#     else
#       index += 1
#     end
#   end
#   puts "#{target_num}は配列内に存在しません"
# end

# def down_direction(ary, index, target_num)
#   while index > 0
#     if ary[index - 1] == target_num
#       return puts "#{target_num}は配列の#{index}番目に存在します"
#     else
#       index -= 1
#     end
#   end
#   puts "#{target_num}は配列内に存在しません"
# end


# array = [1,3,5,6,9,10,13,20,26,31]
# binary_search(array, 13)
# -------------------------
# Rubyドリル39
# def near_ten(num)
#   str_num = num.to_s
#   sum = 0
#   if /\A\d{3}\z/.match?(str_num) # 整数3桁かどうかを判定
#     3.times do
#       sum += str_num.slice!(0).to_i
#     end
#   else
#     return puts "3桁で入力してください"
#   end

#   if sum % 10 >= 8 || sum % 10 <= 2
#     puts "True"
#   elsif sum % 10 >= 5
#     puts "10の倍数との差は#{10 - (sum % 10)}です"
#   else
#     puts "10の倍数との差は#{sum % 10}です"
#   end
# end

# near_ten(117) # →True
# near_ten(123) # →10の倍数との差は4です
# near_ten(111) # →10の倍数との差は3です
# near_ten(101) # →True
# near_ten(9999) # →3桁で入力してください
# -------------------------
# Rubyドリル40
# def xyz_there(str)
#   case str.include?('xyz')
#   when true
#     if str.include?('.xyz')
#       puts "False"
#     else
#       puts "True"
#     end
#   else
#     puts "False"
#   end
# end

# xyz_there('abcxyz') # → True
# xyz_there('abc.xyz') # → False
# xyz_there('xyz.abc') # → True
# xyz_there('azbycx') # → False
# xyz_there('a.zbycx') # → False
# -------------------------
# Rubyドリル41
# def close_far(a,b,c)
#   x = (a - b).abs
#   y = (a - c).abs
#   z = (b - c).abs

#   if (x == 1 && z >= 2) # aとbの差が1かつbとcとの差が2以上の場合
#     puts "True"
#   elsif (y == 1 && z >= 2) # aとcの差が1かつbとcとの差が2以上の場合
#     puts "True"
#   else
#     puts "False"
#   end
# end

# close_far(1, 2, 10) # → True
# close_far(1, 2, 3) # → False
# close_far(4, 1, 3) # → True
# -------------------------
# Rubyドリル42
# def multiplication(num1, num2)
#   puts "#{num1}と#{num2}を掛けた答えは#{num1 * num2}です！"
# end

# puts "最初の数字を入力してください"
# num1 = gets.chomp.to_i
# puts "2番目の数字を入力してください"
# num2 = gets.chomp.to_i
# multiplication(num1, num2)
# -------------------------
# Rubyドリル43
# class Book
#   attr_reader :title, :price
#   def initialize(title, price)
#     @title = title
#     @price = price
#   end
# end

# book = Book.new('プロになるためのWeb技術入門', '2,280(税抜)')
# puts "#{book.title}の値段は#{book.price}円です。"
# -------------------------
# # Rubyドリル44
# 10.times do |i|
#   puts "#{i + 1}回目の繰り返し"
# end
# -------------------------
# Rubyドリル45
# if文ではなくcase文で作成してみる
# num = rand(10)
# case
# when num >= 5
#   puts "#{num}は4より大きい！"
# when num <= 4
#   puts "#{num}は5より小さい！"
# end
# -------------------------
# Rubyドリル46
# def todays_fortune(birthday)
#   divination_array = ["凶", "中吉", "吉", "大吉"].shuffle
#   fortune_index = (birthday * rand(10)) % 4
#   puts "今日のあなたの運勢は#{divination_array[fortune_index]}です！"
# end

# puts "誕生日を入力してください"
# birthday = gets.to_i
# todays_fortune(birthday)
# -------------------------
# Rubyドリル47
# movie = {"title" => "ハリーポッター", "genre" => "ファンタジー", "year" => "2001年"}
# puts "以下から一つを選んで入力してください"
# puts "title\ngenre\nyear"
# key = gets.chomp
# if /(title|genre|year)/.match?(key)
#   puts movie[key]
# else
#   puts "選択肢の中から入力してください。"
# end
# -------------------------
# Rubyドリル48
# class Person
#   def initialize(name, age)
#     @name = name
#     @age = age
#   end
# end

# class Student < Person
#   def introduce
#     puts "私の名前は#{@name}です。#{@age}歳です。"
#   end
# end

# student = Student.new('Jhon', 28)
# student.introduce
# -------------------------
# Rubyドリル49
# def include_cat_and_dog?(str)
#   if str.include?('cat') && str.include?('dog')
#     puts 'True'
#   else
#     puts 'False'
#   end
# end

# # 呼び出し例
# include_cat_and_dog?("catdog")
# include_cat_and_dog?('flogdog')
# -------------------------
# Rubyドリル50
# while true
#   puts "[0]:カロリーを表示する\n[1]:終了する"
#   choices = gets.chomp
#   if /\A[01]\z/.match?(choices)
#     case choices
#     when '0'
#       puts '500kcal'
#     when '1'
#       exit
#     end
#   else
#     puts "[0]か[1]を選択してください"
#   end
# end
# -------------------------
# Rubyドリル51 & 52
# def register_book
#   # 本の著者、タイトル、価格をユーザーに入力させ、保存する
#   puts '著者を入力してください'
#   author = gets.chomp
#   puts 'タイトルを入力してください'
#   title = gets.chomp
#   puts '価格を入力してください'
#   price = gets.to_i
#   books = { author: author, title: title, price: price }
# end

# def show_books(books)
#   calculate_average_price(books)
#   puts "見たい番号を入力してください"
#   books.each_with_index do |book, index|
#     puts "【#{index + 1}】#{book[:title]}"
#   end
#   show_detail(books[gets.to_i - 1])
# end

# def calculate_average_price(books)
#   total_price = 0
#   books.each do |book|
#     total_price += book[:price]
#   end
#   average_price = total_price / books.length
#   puts "平均価格:#{average_price}円"
# end

# def show_detail(book)
#   # 選択された本の詳細な情報（著者、タイトル、価格）を出力する
#   puts "著者: #{book[:author]}"
#   puts "タイトル: #{book[:title]}"
#   puts "価格: #{book[:price]}円"
# end

# books = []
# while true do
#   puts "番号を入力してください"
#   puts "0: 本を登録する"
#   puts "1: 本の一覧を見る"
#   puts "2: 終了する"
#   case gets.to_i
#   when 0
#     books << register_book
#   when 1
#     show_books(books)
#   when 2
#     exit
#   else
#     puts '無効な値です'
#   end
# end
# -------------------------
# Rubyドリル53
# def get_days(year, month)
#   days_array = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
#   if year % 4 == 0 && year % 100 == 0 && year % 400 != 0 && month == 2
#     return 28
#   elsif year % 4 == 0 && month == 2
#     return 29
#   else
#     return days_array[month - 1]
#   end
# end

# puts "年を入力してください："
# year = gets.to_i
# puts "月を入力してください："
# month = gets.to_i

# days = get_days(year, month)
# puts "#{year}年#{month}月は#{days}日間あります"
# -------------------------
# Rubyドリル54 & Rubyドリル55 & Rubyドリル56
# def register_data
#   personal_data = {}
#   puts '名前を入力してください'
#     personal_data[:name] = gets.chomp
#   puts '年齢を入力してください'
#     personal_data[:age] = gets.to_i
#   puts '身長を入力してください（単位:m）'
#     personal_data[:height] = gets.to_f
#   puts '体重を入力してください（単位:kg）'
#     personal_data[:weight] = gets.to_f
#     personal_data[:bmi] = calculate_bmi(personal_data[:weight], personal_data[:height])
#   return personal_data
# end

# def show_data(data)
#   puts '確認したい人の番号を選択してください'
#   data.each_with_index do |data, index|
#     puts "【#{index + 1}】#{data[:name]}"
#   end
#   index = data.length
#   choose_num = gets.to_i
#   if choose_num <= index && choose_num != 0
#     puts "【名前】#{data[choose_num - 1][:name]}"
#     puts "【年齢】#{data[choose_num - 1][:age]}歳"
#     puts "【身長】#{data[choose_num - 1][:height]}m"
#     puts "【体重】#{data[choose_num - 1][:weight]}kg"
#     puts "【BMI】#{data[choose_num - 1][:bmi]}"
#   else
#     puts '無効な値です'
#     show_data(data)
#   end
# end

# def calculate_bmi(weight, height)
#   return (weight / height / height).floor(2)
# end

# data = []
# while true
#   puts "選択してください"
#   puts "[0]登録する"
#   puts "[1]データを確認する"
#   puts "[2]終了する"
#   input = gets.to_i

#   if input == 0
#     data << register_data
#   elsif input == 1
#     show_data(data)
#   elsif input == 2
#     exit
#   else
#     puts '無効な値です'
#   end
# end
# -------------------------
# Rubyドリル57 & Rubyドリル58 & Rubyドリル59
# def register_data
#   combat_power = {}
#   puts '名前を入力してください'
#     combat_power[:name] = gets.chomp
#   puts 'パンチ力を入力してください(0 ~ 100)'
#     combat_power[:punch] = get_valid_input
#   puts 'キック力を入力してください(0 ~ 100)'
#     combat_power[:kick] = get_valid_input
#   puts 'ジャンプ力を入力してください(0 ~ 100)'
#     combat_power[:jump] = get_valid_input
#   return combat_power
# end

# def get_valid_input(num1 = 0, num2 = 100)
#   while true
#   input = gets.to_i
#     if input < num1 || input > num2
#       puts "#{num1}〜#{num2}の範囲で数字を入力してください"
#     else
#       return input
#     end
#   end
# end

# def show_data_list(data)
#   puts '見たい人の番号を選択してください'
#   data.each_with_index do |data, index|
#     puts "【#{index + 1}】#{data[:name]}"
#   end
#   choose_num = get_valid_input(1, data.length)
#   show_data(data[choose_num - 1])
#   hero_rank(data[choose_num - 1])
# end

# def show_data(data)
#   puts "名前：#{data[:name]}"
#   puts "パンチ力：#{data[:punch]}"
#   puts "キック力：#{data[:kick]}"
#   puts "ジャンプ力：#{data[:jump]}"
# end

# def hero_rank(data)
#   power_data = data[:punch] + data[:kick] + data[:jump]
#   if power_data >= 250
#     puts "Rank:A"
#   elsif power_data < 250 && power_data >= 200
#     puts "Rank:B"
#   elsif power_data < 200 && power_data >= 100
#     puts "Rank:C"
#   elsif power_data < 100
#     puts "Rank:D"
#   end
# end

# data = []
# while true
#   puts "選択してください"
#   puts "[0]登録する\n[1]データを確認する\n[2]終了する"
#   input = gets.to_i
#   case input
#   when 0
#     data << register_data
#   when 1
#     show_data_list(data)
#   when 2
#     exit
#   else
#     puts '無効な値です'
#   end
# end
# -------------------------
# Rubyドリル60
# class Dog
#   @@type = '犬'
#   def initialize
#     @name = 'マロン'
#     @dog_type = 'トイプードル'
#   end

#   def self.say
#     puts 'ワンワン'
#   end

#   def say_type
#     puts "わたしは#{@@type}です"
#   end

#   def self_introduction
#     puts "わたしの名前は#{@name}で種類は#{@dog_type}です"
#   end
# end

# dog = Dog.new
# Dog.say
# dog.say_type
# dog.self_introduction
# -------------------------
# Rubyドリル61 & Rubyドリル62 & Rubyドリル63
# def register_data
#   car_infomation = {}
#   puts "車種を入力してください"
#     car_infomation[:car_model] = gets.chomp
#   puts "1Lあたりの走行可能距離(km/L)を入力してください"
#     car_infomation[:fuel_efficiency] = gets.to_f
#   puts "乗車可能人数を入力してください"
#     car_infomation[:capacity] = gets.to_i
#   return car_infomation
# end

# def show_data_index(data)
#   puts "確認するデータを選択してください"
#   data.each_with_index do |data, index|
#     puts " 【#{index + 1}】#{data[:car_model]}"
#   end
#   choose_index = get_valid_input(data.length) - 1
#   show_data(data[choose_index])
#   calculate_fuel(data[choose_index])
#   calculate_capacity(data[choose_index])
# end

# def get_valid_input(upper = 1, lower = 1)
#   input = gets.to_i
#   while input < lower || input > upper
#     puts "#{lower}以上#{upper}以下の数字を入力してください"
#     input = gets.to_i
#   end
#   return input
# end

# def show_data(data)
#   puts "  車種:#{data[:car_model]}"
#   puts "  1Lあたりの走行可能距離:#{data[:fuel_efficiency]}(km/L)"
#   puts "  乗車可能人数:#{data[:capacity]}人"
# end

# def calculate_fuel(data)
#   puts "走行予定距離を入力してください"
#     km = gets.to_f
#   fuel = (km / data[:fuel_efficiency]).round(1)
#   puts "  > ガソリンの消費予定は#{fuel}Lです"
# end

# def calculate_capacity(data)
#   puts "乗車予定人数を入力してください"
#   rider = gets.to_i
#   possible_amount = data[:capacity] - rider
#   if possible_amount < 0
#     puts "  > #{possible_amount.abs}名の定員オーバーです"
#   elsif possible_amount > 0
#     puts "  > あと#{possible_amount}名乗車できます"
#   else
#     puts "  > 定員です"
#   end
# end

# data = []
# while true
#   puts "プログラムを選択してください"
#   puts "  [0]データの登録\n  [1]データの確認\n  [2]プログラムの終了"
#   program_num = gets.to_i
#   case program_num
#   when 0
#     data << register_data
#   when 1
#     show_data_index(data)
#   when 2
#     exit
#   else
#     puts "無効な値です"
#   end
# end
# -------------------------
# Rubyドリル64
# week_array = ["日", "月", "火", "水", "木", "金", "土"]
# now = Time.new
# puts "現在は西暦#{now.year}年#{now.month}月#{now.day}日"
# puts "#{week_array[now.wday]}曜日です"
# -------------------------
# Rubyドリル65
# def janken
#   puts "[0]:グー\n[1]:チョキ\n[2]:パー"

#   # ターミナルからじゃんけんの手を入力
#   player_hand = gets.to_i

#   # 乱数でプログラム側の手を決定
#   program_hand = rand(3)

#   jankens = %w(グー チョキ パー)

#   puts "あなたの手:#{jankens[player_hand]}, わたしの手:#{jankens[program_hand]}"

#   # あいこの判定はplayer_handとprogram_handの値が等しいとき
#   if  player_hand == program_hand
#     puts "あいこで"
#     # 返り値を返す
#     return true

#   # じゃんけんに勝つパターンを全て並べる
#   elsif player_hand == 0 && program_hand == 1 || 
#         player_hand == 1 && program_hand == 2 || 
#         player_hand == 2 && program_hand == 0
#     puts "あなたの勝ちです"
#   # 返り値を返す
#     return false

#   else
#     puts "あなたの負けです"
#     # 返り値を返す
#     return false
#   end
# end

# next_game = true

# puts "最初はグー、じゃんけん..."

# while next_game do
#   # jankenメソッドの返り値をnext_gameに代入
#   next_game = janken
# end
# -------------------------
# Rubyドリル66
# def registration_student
#   student = {}
#   puts '生徒名を入力してください'
#     student[:name] = gets.chomp
#   puts '生徒の年齢を入力してください'
#     student[:age] = gets.to_i
#   puts "国語の得点は？"
#     student[:japanese] = get_valid_score
#   puts "数学の得点は？"
#     student[:math] = get_valid_score
#   puts "英語の得点は？"
#     student[:english] = get_valid_score
#   return student
# end

# def show_student_name(data)
#   puts '見たい生徒の番号を入力してください'
#   data.each_with_index do |data, index|
#     puts "  【#{index + 1}】#{data[:name]}"
#   end
#   choose_num = get_valid_input(data) - 1
#   puts "名前:#{data[choose_num][:name]}"
#   puts "年齢:#{data[choose_num][:age]}"
#   puts "国語:#{data[choose_num][:japanese]}"
#   puts "数学:#{data[choose_num][:math]}"
#   puts "英語:#{data[choose_num][:english]}"
# end

# def get_valid_score
#   score = gets.to_i
#   while score < 0 || score > 100
#     puts "0 〜 100の数値を入力してください"
#     score = gets.to_i
#   end
#   return score
# end

# def get_valid_input(data)
#   input = gets.to_i
#   while input < data.length || input > data.length
#     puts "無効な値です"
#     input = gets.to_i
#   end
#   return input
# end

# students = []

# while true
#   puts '行いたい項目を選択してください'
#   puts '[1]点数を登録する'
#   puts '[2]点数を確認する'
#   puts '[3]終了する'
#   input = gets.to_i
#   if input == 1
#     students << registration_student
#   elsif input == 2
#     show_student_name(students)
#   elsif input == 3
#     exit
#   else
#     puts '無効な値です'
#   end
# end
# -------------------------
# Rubyドリル67 & Rubyドリル68
# def post_item(a_cart)
#   # 商品名・値段・個数の入力を促し、入力された値をハッシュオブジェクトで管理する
#   item = {}
#   puts "商品名を入力してください："
#     item[:name] = get_valid_input("string")
#   puts "単価を入力してください："
#     item[:price] = get_valid_input("integer")
#   puts "個数を入力してください："
#     item[:amount] = get_valid_input("integer")
#   line = "---------------------------"

#   # 入力された値（ハッシュオブジェクトで管理している値）と合計金額を表示する
#   puts "商品名 : #{item[:name]}"
#   puts "単価 : #{item[:price]}"
#   puts "個数 : #{item[:amount]}"
#   puts "合計金額 : #{item[:price] * item[:amount]}"

#   # ハッシュを配列オブジェクトに追加する
#   a_cart << item

#   # a_cartをメソッドの呼び出し元に返す
#   return a_cart
# end

# def check_items(a_cart)
#   # 保存された全ての商品情報（商品名・値段・個数）を、商品ごとに表示する
#   total_price = 0
#   a_cart.each_with_index do |item, index|
#     puts "【#{index + 1}】商品名:#{item[:name]}"
#     puts "     単価:#{item[:price]}"
#     puts "     個数:#{item[:amount]}"
#     total_price += (item[:price] * item[:amount])
#   end
#   # 全ての商品の合計金額を表示する
#   puts "---------------------------"
#   puts "合計金額 :#{total_price} "
#   puts "---------------------------"

#   #会計確認
#   confirm_payment(total_price)
# end

# def end_program
#   exit
# end

# def exception
#   puts "入力された値は無効な値です"
# end

# def get_valid_input(type)
#   input = nil
#   while true
#     case type
#     when "string"
#       input = gets.chomp
#       if /\A[ぁ-んァ-ヶ一-龥々a-z]+/.match?(input)
#         return input
#       else
#         puts "無効な値です。文字列を入力してください。"
#       end
#     when "integer"
#       input = gets.chomp
#       if /\A\d+\z/.match?(input)
#         return input.to_i
#       else
#         puts "無効な値です。整数を入力してください。"
#       end
#     end
#   end
# end

# def confirm_payment(total_price)
#   puts "【確認】\n [0]買い物を続ける\n [1]支払いへ進む"
#   if get_valid_range == 1
#     buy_item(total_price)
#   end
# end

# def buy_item(total_price)
#   puts "合計金額：¥#{total_price}"
#   puts "支払い金額を入力してください"
#   amount_money = get_valid_input("integer")
#   while amount_money < total_price
#     puts "金額が不足しています。\n支払い金額を入力してください。"
#     amount_money = get_valid_input("integer")
#   end
#   puts "【決済完了】お釣りは#{amount_money - total_price}円です。ご購入ありがとうございました。"
#   exit
# end

# def get_valid_range(upper = 1, lower = 0)
#   input = gets.to_i
#   while input < lower || input > upper
#     puts "#{lower}以上#{upper}以下の数字を入力してください"
#     input = gets.to_i
#   end
#   return input
# end

# cart = []

# while true do
#   puts "商品数: #{cart.length}"
#   puts "[0]商品をカートに入れる"
#   puts "[1]カートを確認する" unless cart.empty? #カートに商品がない場合、[1]は選択不可
#   puts "[2]アプリを終了する"
#   input = gets.to_i

#   if input == 0 then
#     cart = post_item(cart)
#   elsif input == 1 then
#     check_items(cart)
#   elsif input == 2 then
#     end_program
#   else
#     exception
#   end
# end
# -------------------------
# Rubyドリル69
# class Food
#   @@cook_menu = []
#   def self.input
#     menu_info = []
#     puts "料理名を入力してください"
#     menu_info << gets.chomp
#     puts "カロリーを入力してください"
#     menu_info << gets.to_i
#     @@cook_menu << menu_info
#   end

#   def self.show_all_calorie
#     total_calorie = 0
#     puts "-----------------------------"
#     @@cook_menu.each do |menu|
#       puts "#{menu[0]}   :#{menu[1]}kcal"
#       total_calorie += menu[1]
#     end
#     puts "-----------------------------"
#     puts "カロリー合計   :#{total_calorie}kcal"
#   end
# end

# while true do
#   puts "[0]:カロリーを入力する"
#   puts "[1]:カロリーの合計を見る"
#   input = gets.to_i

#   if input == 0
#     Food.input           # カロリーの入力
#   elsif input == 1
#     Food.show_all_calorie # カロリーの合計を表示
#     exit
#   end
# end
# -------------------------
# Rubyドリル69 インスタンス生成版
# class Food
#   @@foods_menu = []
#   attr_accessor :name, :calorie

#   def initialize(name, calorie)
#     @name = name
#     @calorie = calorie
#   end

#   def self.input
#     puts "料理名を入力してください:"
#     menu = gets.chomp
#     puts "カロリーを入力してください:"
#     calorie = gets.to_i
#     @@foods_menu << Food.new(menu, calorie)
#   end

#   def self.show_all_calorie
#     total_calorie = 0
#     puts "-----------------------------"
#     @@foods_menu.each do |menu|
#       puts "#{menu.name}   :#{menu.calorie}kcal"
#       total_calorie += menu.calorie
#     end
#     puts "-----------------------------"
#     puts "合計金額   :#{total_calorie}kcal"
#   end
# end

# while true do
#   puts "[0]:カロリーを入力する"
#   puts "[1]:カロリーの合計を見る"
#   input = gets.to_i

#   if input == 0
#     Food.input # カロリーの入力
#   elsif input == 1
#     Food.show_all_calorie # カロリーの合計を表示
#     exit
#   end
# end
# -------------------------
# Rubyドリル70
def get_week(year, month, day)
  leap_count = get_leap_count(year, month)
  days_array = %w(0 31 28 31 30 31 30 31 31 30 31 30 31)
  days = 0
  for i in 0...month
    days += days_array[i].to_i
  end
  days += (year - 1) * 365 + day
  puts days # debug
  index = days % 7
  week_array = %w(日 月 火 水 木 金 土)
  week_array[index]
end

def get_leap_count(year, month)
  count = 0
  for i in 1...year
    if i % 4 == 0 && i % 100 == 0 && i % 400 != 0
    elsif i % 4 == 0
      count += 1
    end
  end

  if year % 4 == 0 && year % 100 == 0 && year % 400 != 0
  elsif year % 4 == 0 && month >= 3
    count += 1
  end
  count
end

puts "年を入力してください："
year = gets.to_i
puts "月を入力してください："
month = gets.to_i
puts "日を入力してください："
day = gets.to_i

week = get_week(year, month, day)
puts "#{year}年#{month}月#{day}日は#{week}曜日です"

# 閏年を考慮する
  # yearに対し4と100で割り切れ、400で割り切れない年号がいくつあるか（閏年）をカウントする
    # 閏年のカウント結果を最終的に足し算
      # (審議)入力値が3月を迎えているかどうかで1を加算・減算
# 月毎の暦配列を用意しmonthを上限の添字として配列内の暦を加算（forメソッド）した結果を変数daysへ代入
  # 累積日付 = (year - 1) * 365 + 変数days
# 曜日の配列を用意（日〜土の順）
  # 累積の日付を7で割った余り（剰余）が曜日配列の添字になる

# -------------------------
# 【模範解答】
# def get_days(year, month)
#   days = 0
#   month_days = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
#   if month == 2
#     if year % 4 == 0
#       if year % 100 == 0 && year % 400 != 0
#         days = 28
#       else
#         days = 29
#       end
#     else
#       days = 28
#     end
#   else
#     days = month_days[month - 1]
#   end

#   return days
# end

# def get_week(year, month, day)
#   weeks = ["月", "火", "水", "木", "金", "土", "日"]
#   days = 0

#   year_index = year - 1
#   while year_index > 0 do
#     if get_days(year_index, 2) == 29
#       days = days + 366
#     else
#       days = days + 365
#     end
#     year_index = year_index - 1
#   end

#   month_index = month - 1
#   while month_index > 0 do
#     month_days = get_days(year, month_index)
#     days = days + month_days
#     month_index = month_index - 1
#   end

#   days = days + day # dayを足す
#   return weeks[(days - 1) % 7]
# end

# puts "年を入力してください："
# year = gets.to_i
# puts "月を入力してください："
# month = gets.to_i
# puts "日を入力してください："
# day = gets.to_i

# week = get_week(year, month, day)
# puts "#{year}年#{month}月#{day}日は#{week}曜日です"