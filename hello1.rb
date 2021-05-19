require "csv"


puts "1(新規でメモを作成) 2(既存のメモ編集する)"

memo_type = gets.chomp

#ダブルクォーテーションをつけないと文字列として認識しないから付ける。
if memo_type == "1"

puts "新規でメモを作成"

puts "拡張子を除いた、作成したいファイル名を入力してください。"

file_name = gets.chomp

puts "メモしたい内容を記入してください"

puts "完了したら　Ctrl＋Dをおします"

content = readlines.map(&:chomp)

#次の文のwはこれから書き込みますよっていう意味。
CSV.open("#{file_name}.csv",'w') do |csv|
csv << content
end




elsif memo_type == "2"

puts "既存のメモ編集します。ファイル名を選択してください。"



file_name = gets.chomp



puts "メモしたい内容を記入してください"

puts "完了したらCtrl＋Dをおします"

memo_input = readlines.map(&:chomp)

#次の文のaは追加を意味する。
CSV.open("#{file_name}.csv","a") do |csv|

csv << memo_input



end


else

puts "エラーです"

end
