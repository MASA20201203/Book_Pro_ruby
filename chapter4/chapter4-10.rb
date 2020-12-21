# 4.10 繰り返し処理用の制御構造

# 4.10.1 break
# # shuffleメソッドで配列の要素をランダムに並び替える
# numbers = [1, 2, 3, 4, 5].shuffle
# numbers.each do |n|
#   puts n
#   # 5がでたら繰り返し脱出する
#   break if n == 5
# end

# # while文等でもかける
# numbers = [1, 2, 3, 4, 5].shuffle
# i = 0
# while i < numbers.size
#   n = numbers[i]
#   puts n
#   break if n == 5
#   i += 1
# end

# ret =
#   while true
#     break
#   end
# p ret

# ret =
#   while true
#     break 123
#   end
# p ret

# 入れ子になっている場合
# fruits = ['apple', 'melon', 'orange']
# numbers = [1, 2, 3]
# fruits.each do |fruit|
#   # 配列の数字をランダムに入れ替え、3が出たらbreakする
#   numbers.shuffle.each do |n|
#     puts "#{fruit}, #{n}"
#     # numbersのループは脱出するが、fruitsのループは継続する
#     break if n == 3
#   end
# end
