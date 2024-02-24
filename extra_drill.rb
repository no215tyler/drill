# Rubyドリル71 & Rubyドリル72
def register_item(registered_item)
  items = {}
  puts "商品名を入力してください："
    items[:name] = gets.chomp
  puts "販売価格を入力してください："
    items[:price] = gets.to_i
  puts "仕入れ値を入力してください："
    items[:purchase] = gets.to_i
    items[:profit] = items[:price] - items[:purchase]
    items[:profit_rate] = (items[:profit].to_f/ items[:price].to_f * 100).round(2)
    line = "---------------------------"

  puts "商品名 : #{items[:name]}\n#{line}"
  puts "販売価格 : #{items[:price]}円\n#{line}"
  puts "仕入れ値 : #{items[:purchase]}円\n#{line}"
  registered_item << items
end

def check_items(registered_item)
  total_sales = 0
  total_profit = 0
  line = "---------------------------"
  puts "【商品一覧】\n#{line}"

  registered_item.each do |item|
    puts "商品名：#{item[:name]}"
    puts "販売価格：#{item[:price]}円"
    puts "仕入れ値：#{item[:purchase]}円\n#{line}"
    puts "利益 : #{item[:profit]}円\n#{line}"
    puts "利益率 : #{item[:profit_rate]}%\n#{line}"
    total_sales += item[:price]
    total_profit += item[:profit]
  end
  puts "総売上 :#{total_sales}円\n#{line}"
  puts "総利益 :#{total_profit}円\n#{line}"
  average_profit_rate = (total_profit.to_f / total_sales.to_f * 100 / registered_item.length).round(2)
  puts "平均利益率 :#{average_profit_rate}%\n#{line}"
end

def end_program
  exit
end

def exception
  puts "入力された値は無効な値です"
end

item_list = []

while true do
  puts "商品数: #{item_list.length}"
  puts "[1]商品を登録する"
  puts "[2]商品の一覧を確認する" unless item_list.empty?
  puts "[3]アプリを終了する"

  input = gets.to_i

  if input == 1
    register_item(item_list)
  elsif input == 2
    check_items(item_list)
  elsif input == 3
    end_program
  else
    exception
  end
end