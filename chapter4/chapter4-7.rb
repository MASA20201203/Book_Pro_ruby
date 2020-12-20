# 4.7 配列についてもっと詳しく

# 4.7.1 さまざまな要素の取得方法
# a = [1, 2, 3, 4, 5]
# p a
# p a[1, 3]
# p a.values_at(0, 2, 4)
# p "---"
# p a[a.size - 1]
# p a[-1]
# p a[-2]
# p a[-2, 2]
# p a[-2, -2]
# p "---"
# p a.last
# p a.last(2)
# p "---"
# p a.first
# p a.first(2)

# 4.7.2 さまざまな要素の変更方法
# a = [1, 2, 3]
# p a
# a[-3] = -10
# p a
# # 指定可能な負の値よりも小さくなるとエラーが発生する
# a[-4] = -1

# a = [1, 2, 3, 4, 5]
# 2つめから3要素分を100で置き換える
# a[1, 3] = 100
# p a
# a[1, 3] = 100, 200
# p a

# a = []
# a.push(1)
# p a
# a.push(2, 3)
# p a
# a.delete(1)
# p a
# a.pop
# p a

# 4.7.3 配列の連結
# a = [1]
# b = [2, 3]
# p a.concat(b)
# p a
# p b
# p "---"
# a = [1]
# b = [2, 3]
# p a + b     # 基本は「+」を利用する
# p a
# p b

# 4.7.4 配列の和集合、差集合、積集合
# a = [1, 2, 3]
# b = [3, 4, 5]
# p a | b
# p "---"
# a = [1, 2, 3]
# b = [3, 4, 5]
# p a - b
# p "---"
# a = [1, 2, 3]
# b = [3, 4, 5]
# p a & b
# p "---"
# require 'set'
# a = Set.new([1, 2, 3])
# b = Set.new([3, 4, 5])
# p a | b
# p a - b
# p a & b

# 4.7.5 多重代入で残りの全要素を配列として受け取る
# e, f = 100, 200, 300
# p e
# p f
# p "---"
# e, *f = 100, 200, 300
# p e
# p f

# 4.7.6 1つの配列を複数の引数として展開する
# a = []
# b = [2, 3]
# a.push(1)
# a.push(b)
# p a
# p "---"
# a = []
# b = [2, 3]
# a.push(1)
# a.push(*b)
# p a

# 4.7.7 メソッドの可変長引数
# def greeting(*names)
#   "#{names.join('と')}、こんにちは！"
# end
# p greeting('田中さん')
# p greeting('田中さん', '鈴木さん')
# p greeting('田中さん', '鈴木さん', '佐藤さん')

# 4.7.9 *で配列同士を非破壊的に連結する
# a = [1, 2, 3]

# # []の中にそもまま配列を置くと、配列の配列になる
# p [a]

# # *付きで配列を置くと、展開されて別々の要素になる
# p [*a]

# p [-1, 0, *a, 4, 5]

# p [-1, 0] + a + [4, 5]

# 4.7.10 %記法で文字列の配列を完結に作る
# # []で文字列の配列を作成する
# p ['apple', 'melon', 'orange']

# # %wで文字列の配列を作成する（!で囲む場合）
# p %w!apple melon orange!

# # %wで文字列の配列を作成する（丸カッコで囲む場合）
# p %w(apple melon orange)

# # 空白文字（スペースや改行）が連続した場合も1つの区切り文字と見なされる
# p %w(
#   apple
#   melon
#   orange
# )

# # 空白文字を含めたい場合
# p %w(big\ apple small\ melon orange)

# # 式展開等を含めたい場合
# prefix = 'This is'
# p %W(#{prefix}\ an\ apple small\nmelon orange)
# puts %W(#{prefix}\ an\ apple small\nmelon orange)

# 4.7.11 文字列を配列に変換する
# p 'Ruby'.chars
# p 'Ruby,Java,PHP'.split(',')

# 4.7.12 配列に初期値を設定する
# a = Array.new
# p a

# # 要素が5つの配列を作成する
# a = Array.new(5)
# p a

# # 要素が5つで0を初期値とする配列を作成する
# a = Array.new(5, 0)
# p a

# p "---"
# # 要素数が10で、1,2,3,1,2,3...と繰り返す配列を作る
# a = Array.new(10) { |n| n % 3 + 1 }
# p a
# a = Array.new(10) { |n| n }
# p a
