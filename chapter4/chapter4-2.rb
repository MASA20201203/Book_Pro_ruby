# 4.2 配列
# 空の配列を作成し、そのクラス名を確認する
# p [].class

# 4.2.1 要素の変更、追加、削除
# a = [1, 2, 3]
# a[4] = 50
# p a

# a << 51
# p a

# p a.delete_at(1)
# p a

# 4.2.2 配列を使った多重代入
# a, b = 1, 2
# p a
# p b

# # 配列を使って多重代入する
# a, b = [1, 2]
# p a
# p b

# # 右辺の数が少ない場合はnilが入る
# c, d = [10]
# p c
# p d

# # 右辺が多い場合は切り捨て
# e, f = [100, 200, 300]
# p e
# p f

# divmodは商と余りを配列で返す
p 14.divmod(3)

# 戻り値を配列のまま受け取る
quo_rem = 14.divmod(3)
puts "商=#{quo_rem[0]}、余り=#{quo_rem[1]}"

# 多重代入で別々の変数として受け取る
quotient, reminder = 14.divmod(3)
puts "商=#{quotient}、余り=#{reminder}"
