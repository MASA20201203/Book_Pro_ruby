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
