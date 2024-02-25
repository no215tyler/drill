# Rubyドリル71 & Rubyドリル72
# def register_item(registered_item)
#   items = {}
#   puts "商品名を入力してください："
#     items[:name] = gets.chomp
#   puts "販売価格を入力してください："
#     items[:price] = gets.to_i
#   puts "仕入れ値を入力してください："
#     items[:purchase] = gets.to_i
#     items[:profit] = items[:price] - items[:purchase]
#     items[:profit_rate] = (items[:profit].to_f/ items[:price].to_f * 100).round(2)
#     line = "---------------------------"

#   puts "商品名 : #{items[:name]}\n#{line}"
#   puts "販売価格 : #{items[:price]}円\n#{line}"
#   puts "仕入れ値 : #{items[:purchase]}円\n#{line}"
#   registered_item << items
# end

# def check_items(registered_item)
#   total_sales = 0
#   total_profit = 0
#   line = "---------------------------"
#   puts "【商品一覧】\n#{line}"

#   registered_item.each do |item|
#     puts "商品名：#{item[:name]}"
#     puts "販売価格：#{item[:price]}円"
#     puts "仕入れ値：#{item[:purchase]}円\n#{line}"
#     puts "利益 : #{item[:profit]}円\n#{line}"
#     puts "利益率 : #{item[:profit_rate]}%\n#{line}"
#     total_sales += item[:price]
#     total_profit += item[:profit]
#   end
#   puts "総売上 :#{total_sales}円\n#{line}"
#   puts "総利益 :#{total_profit}円\n#{line}"
#   average_profit_rate = (total_profit.to_f / total_sales.to_f * 100 / registered_item.length).round(2)
#   puts "平均利益率 :#{average_profit_rate}%\n#{line}"
# end

# def end_program
#   exit
# end

# def exception
#   puts "入力された値は無効な値です"
# end

# item_list = []

# while true do
#   puts "商品数: #{item_list.length}"
#   puts "[1]商品を登録する"
#   puts "[2]商品の一覧を確認する" unless item_list.empty?
#   puts "[3]アプリを終了する"

#   input = gets.to_i

#   if input == 1
#     register_item(item_list)
#   elsif input == 2
#     check_items(item_list)
#   elsif input == 3
#     end_program
#   else
#     exception
#   end
# end
# -------------------------
# Rubyドリル73
# def bubble_sort(data)
#   # 配列の数を数える処理を記述
#   length = data.length

#   # for文を2つ使用する
#   for i in 0...length
#     for j in 0...length
#       # 先頭から隣の数同士の大きさを比べる
#       if data[i] < data[j]
#         # 先頭側の要素の方が大きい場合は、配列の位置を隣同士で交換する
#         data[i], data[j] = data[j], data[i]
#       end
#     end
#   end
# end

# # 呼び出し例
# number = [1,23,4,6,12,45,79]
# bubble_sort(number)
# puts number
# -------------------------
# Rubyドリル74
# def bubble_sort(data)
#   # 配列の数を数える処理を記述
#   length = data.length

#   for i in 0...length
#     for j in 1...length - i
#       if (data[j - 1]) < (data[j])
#         data[j - 1], data[j] = data[j], data[j - 1]
#       end
#     end
#   end
# end

# # 呼び出し例
# number = [1,23,4,6,12,45,79]
# bubble_sort(number)
# puts number
# -------------------------
# Rubyドリル75
# def check_index(text, search_string)
#   index = text.index(search_string)
#   unless index.nil?
#     puts "特定の文字#{search_string}は、#{index}番目です"
#   else
#     puts "特定の文字#{search_string}はありません"
#   end
# end

# check_index("hello","h") # → 特定の文字hの位置は、0番目です
# check_index("world","e") # → 特定の文字eはありません
# check_index("apple","p") # → 特定の文字pの位置は、1番目です
# -------------------------
# Rubyドリル76
# def text_transform(text)
#   puts text.gsub(/[\s　]/, "").upcase
# end

# text_transform("hello world") # → HELLOWORLD
# text_transform("ruby on rails") # → RUBYONRAILS
# text_transform("a　bc") # → ABC （全角空白が含まれている場合も削除される）
# -------------------------
# Rubyドリル77
def sum_number(n, m)
  result = 0
  for i in n..m
    result += i
  end
  puts result
end

sum_number(1,3) # → 6
sum_number(1,10) # → 55
sum_number(5,15) # → 110