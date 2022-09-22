require "csv"


puts "1（新規でメモを書く）２（既存のメモを上書きする）"
type = gets.to_s
memo_type = type.chomp

if memo_type == "1"
  puts "新規でメモを作成します。拡張子を除いたファイル名を入力してください。"
  file_name = gets.chomp
  
  puts "メモの内容を記入してください。Ctrl + dで保存します。"
  imput_memo = STDIN.read
  memo = imput_memo.chomp
  
  CSV.open("#{file_name}.csv" , "w") do |csv|
    csv.puts ["#{memo}"]
  end

elsif memo_type == "2"
  puts "既存のメモを上書きします。上書きしたいメモの拡張子を除いたファイル名を入力してください。"
  file_name = gets.chomp
  
  puts "メモの内容を記入してください。Ctrl + dで保存します。"
  imput_memo = STDIN.read
  memo = imput_memo.chomp
  
  CSV.open("#{file_name}.csv" , "a") do |csv|
    csv.puts ["#{memo}"]
  end
  
end