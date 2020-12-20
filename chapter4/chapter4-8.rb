#  4.8 ブロックについてもっと詳しく

# 4.8.1 添え字付きの繰り返し操作
# fruits = ['apple', 'orange', 'melon']
# # ブロック引数のiには0, 1, 2...と要素の添え字が入る
# fruits.each_with_index { |fruit, i| puts "#{i}: #{fruit}" }

# 4.8.2 with_indexメソッドを使った添え字付きの繰り返し処理
# fruits = ['apple', 'orange', 'melon']
# # mapとして処理しつつ、添え字も受け取る
# p fruits.map.with_index { |fruit, i| "#{i}: #{fruit}"}

# fruits = ['apple', 'orange', 'melon']
# # 名前に"a"を含み、なおかつ添え字が奇数である要素を削除する
# p fruits.delete_if.with_index { |fruit, i| fruit.include?('a') && i.odd? }

# # ブロックなしでメソッドを呼ぶとEnueratorオブジェクトが返る。よってwith_indexメソッドが呼び出せる
# fruits = ['apple', 'orange', 'melon']
# p fruits.each
# p fruits.map
# p fruits.delete_if

# 4.8.3 添え字を0以外の数値から開始させる
# fruits = ['apple', 'orange', 'melon']

# # eachで繰り返しつつ、1から始まる添え字を取得する
# fruits.each.with_index(1) { |fruit, i| puts "#{i}: #{fruit}" }

# # mapで処理しつつ、10から始まる添え字を取得する
# p fruits.map.with_index(10) { |fruit, i| "#{i}: #{fruit}" }
