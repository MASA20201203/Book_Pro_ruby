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

# 4.3.4 ブロック引数とブロック内の変数
# numbers = [1, 2, 3, 4]
# sum = 0
# numbers.each do |n|
#   sum_value = n.even? ? n * 10 : n
#   sum += sum_value
# end
# p sum

# # ブロックの外に出ると、sum_valueは参照できない
# p sum_value

# シャドーイング
# numbers = [1, 2, 3, 4]
# sum = 0
# sum_value = 100
# numbers.each do |sum_value|
#   sum += sum_value
# end
# p sum

# 4.3.5 do...end と {}
# ブロックは改行を入れなくてもよい
numbers = [1, 2, 3, 4]
sum = 0
numbers.each do |n| sum += n end
p sum

numbers = [1, 2, 3, 4]
sum = 0
# do ... end の代わりに{}を使う
numbers.each { |n| sum += n }
p sum

numbers = [1, 2, 3, 4]
sum = 0
# {}でブロックを作り、なおかつ改行を入れる
numbers.each { |n|
  sum += n
}
p sum
