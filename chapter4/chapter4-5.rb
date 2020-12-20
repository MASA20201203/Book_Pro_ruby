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
a = [1, 2, 3, 4, 5]
# 2番目から4番目までの要素を取得する
p a[1..3]
p a[1...3]

a = 'abcdef'
# 2文字から4文字目までを抜き出す
p a[1..3]
p a[1...3]

