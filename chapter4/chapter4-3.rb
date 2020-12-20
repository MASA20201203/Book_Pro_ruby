# 4.3 ブロック

# 4.3.2 Rubyの繰り返し処理
# numbers = [1, 2, 3, 4]
# sum = 0
# numbers.each do |n|
#   sum += n
# end
# p sum

# 4.3.3 配列の要素を削除する条件を自由に指定する
# a = [1, 2, 3, 1, 2, 3]
# p a
# # 配列から値が2の要素を削除する
# p a.delete(2)
# p a

# a = [1, 2, 3, 1, 2, 3]
# p a
# # 配列から値が奇数の要素を削除する
# a.delete_if do |n|
#   n.odd?
# end
# p a
