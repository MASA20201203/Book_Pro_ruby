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

# 4.10.2 throwとcatchを使った大域脱出
# fruits = ['apple', 'melon', 'orange']
# numbers = [1, 2, 3]
# catch :done do
#   fruits.shuffle.each do |fruit|
#     numbers.shuffle.each do |n|
#       puts "#{fruit}, #{n}"
#       if fruit == 'orange' && n == 3
#         # すべての繰り返し処理を脱出する
#         throw :done
#       end
#     end
#   end
# end

# fruits = ['apple', 'melon', 'orange']
# numbers = [1, 2, 3]
# catch :done do
#   fruits.shuffle.each do |fruit|
#     numbers.shuffle.each do |n|
#       puts "#{fruit}, #{n}"
#       if fruit == 'orange' && n == 3
#         # catchと一致しないタグをthrowする
#         throw :foo
#       end
#     end
#   end
# end

# ret =
#   catch :done do
#     throw :done
#   end
# p ret

# ret =
#   catch :done do
#     throw :done, 123
#   end
# p ret

# 4.10.3 繰り返し処理で使うbreakとreturnの違い
# def calc_with_break
#   numbers = [1, 2, 3, 4, 5, 6]
#   target = nil
#   numbers.shuffle.each do |n|
#     target = n
#     # breakで脱出する
#     break if n.even?
#   end
#   target * 10
# end
# p calc_with_break

# def calc_with_break
#   numbers = [1, 2, 3, 4, 5, 6]
#   target = nil
#   numbers.shuffle.each do |n|
#     target = n
#     # returnで脱出する？
#     return if n.even?
#   end
#   target * 10
# end
# p calc_with_break

# [1, 2, 3].each do |n|
#   puts n
#   return
# end

# 4.10.4 next
# numbers = [1, 2, 3, 4, 5]
# numbers.each do |n|
#   # 偶数であれば中断して次の繰り返し処理に進む
#   next if n.even?
#   puts n
# end
