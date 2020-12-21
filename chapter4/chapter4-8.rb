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

# 4.8.4 配列がブロック引数に渡される場合
# dimensions = [
#   # [縦, 横]
#   [10, 20],
#   [30, 40],
#   [50, 60],
# ]

# # 面積の計算結果を格納する配列
# areas = []
# # ブロック引数が1個であれば、ブロック引数の値が配列になる
# dimensions.each do |dimension|
#   length = dimension[0]
#   width = dimension[1]
#   areas << length * width
# end
# p areas

# # 面積の計算結果を格納する配列
# areas = []
# # 配列の要素分だけブロック引数を用意すると、各要素の値が別々の変数に格納される
# dimensions.each do |length, width|
#   areas << length * width
# end
# p areas

# dimensions = [
#   [10, 20],
#   [30, 40],
#   [50, 60],
# ]

# # ブロック引数を()で囲んで、配列の要素を別々の引数として受け取る
# dimensions.each_with_index do |(length,width), i|
#   puts "length: #{length}, width: #{width}, i: #{i}"
# end

# 4.8.5 ブロックローカル変数
# numbers = [1, 2, 3, 4]
# sum = 0
# # ブロックの外にあるsumとは別物の変数sumを用意する
# numbers.each do |n; sum|
#   # 別物のsumを10で初期化し、ブロック引数の値を加算する
#   sum = 10
#   sum += n
#   # 加算した結果をターミナルに表示する
#   p sum
# end
# p sum

# 4.8.6 繰り返し処理以外でも使用されるブロック

# # sample.txtを開いて文字列を書き込む（クローズ処理は自動的に行われる）
# File.open("./sample.txt", "w") do |file|
#   file.puts("1行目のテキストです。")
#   file.puts("2行目のテキストです。")
#   file.puts("3行目のテキストです。")
# end
