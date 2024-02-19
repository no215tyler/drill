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
# Rubyドリル51
def register_book
  # 本の著者、タイトル、価格をユーザーに入力させ、保存する
  puts '著者を入力してください'
  author = gets.chomp
  puts 'タイトルを入力してください'
  title = gets.chomp
  puts '価格を入力してください'
  price = gets.chomp
  books = { author: author, title: title, price: price }
end

def show_books(books)
  puts "見たい番号を入力してください"
  books.each_with_index do |book, index|
    puts "【#{index + 1}】#{book[:title]}"
  end
  show_detail(books[gets.to_i - 1])
end

def show_detail(book)
  # 選択された本の詳細な情報（著者、タイトル、価格）を出力する
  puts "著者: #{book[:author]}"
  puts "タイトル: #{book[:title]}"
  puts "価格: #{book[:price]}円"
end

books = []
while true do
  puts "番号を入力してください"
  puts "0: 本を登録する"
  puts "1: 本の一覧を見る"
  puts "2: 終了する"
  case gets.to_i
  when 0
    books << register_book
  when 1
    show_books(books)
  when 2
    exit
  else
    puts '無効な値です'
  end
end