# 4.5 範囲（Range）

# p (1..5).class
# p (1...5).class

# p range = 1..5
# p range.include?(0)
# p range.include?(1)
# p range.include?(4.9)
# p range.include?(5)
# p range.include?(6)

# p range = 1...5
# p range.include?(0)
# p range.include?(1)
# p range.include?(4.9)
# p range.include?(5)
# p range.include?(6)

# 4.5.1 配列や文字列の一部を抜き出す
# a = [1, 2, 3, 4, 5]
# # 2番目から4番目までの要素を取得する
# p a[1..3]
# p a[1...3]

# a = 'abcdef'
# # 2文字から4文字目までを抜き出す
# p a[1..3]
# p a[1...3]

# 4.5.2 n以上m以下、n以上m未満の判定をする
# 不等号を使う場合
# def liquid?(temperature)
#   # 0度以上100度未満であれば液体、と判定したい
#   0 <= temperature && temperature < 100
# end
# puts liquid?(-1)
# puts liquid?(0)
# puts liquid?(99)
# puts liquid?(100)

# 範囲オブジェクトを使う場合
# def liquid?(temperature)
#   (0...100).include?(temperature)
# end
# puts liquid?(-1)
# puts liquid?(0)
# puts liquid?(99)
# puts liquid?(100)

# 4.5.3 case文で使う
# def charge(age)
#   case age
#   # 0歳から5歳までの場合
#   when 0..5
#     0
#   # 6歳から12歳までの場合
#   when 6..12
#     300
#   # 13才から18歳までの場合
#   when 13..18
#     600
#   # それ以外の場合
#   else
#     1000
#   end
# end
# puts charge(3)
# puts charge(12)
# puts charge(16)
# puts charge(25)
