# 4.9 様々な繰り返し処理

# 4.9.1 timesメソッド
# sum = 0
# 5.times { |n| sum += n}
# p sum

# sum = 0
# 5.times { sum += 1 }
# p sum

# 4.9.2 uptoメソッドとdowntoメソッド
# a = []
# 10.upto(14) { |n| a << n}
# p a

# a = []
# 14.downto(10) { |n| a << n}
# p a

# 4.9.3 stepメソッド
# a = []
# 1.step(10, 2) { |n| a << n}
# p a

# a = []
# 10.step(1, -2) { |n| a << n}
# p a

# 4.9.4 while文とuntil文
# a = []
# while a.size < 5
#   a << 1
# end
# p a

# a = []
# while a.size < 5 do a << 1 end
# p a

# a = []
# a << 1 while a.size < 5
# p a

# a = []
# while false
#   # このコードは常に条件が偽になるので実行されない
#   a << 1
# end
# p a

# # begin ... endで囲むとどんな条件でも最低1回は実行される
# begin
#   a << 1
# end while false
# p a

# a = [10, 20, 30, 40, 50]
# until a.size <= 3
#   a.delete_at(-1)
# end
# p a

# 4.9.5 for文
# numbers = [1, 2, 3, 4]
# sum = 0
# for n in numbers
#   sum += n
# end
# p sum

# # doを入れて１行で書くことも可能
# sum = 0
# for n in numbers do sum += n end
# p sum

# # 通常はeachメソッド
# numbers = [1, 2, 3, 4]
# sum = 0
# numbers.each do |n|
#   sum += n
# end
# p sum

# 4.9.6 loopメソッド
# numbers = [1, 2, 3, 4, 5]
# loop do
#   # sampleメソッドでランダムに要素を1つ取得する
#   n = numbers.sample
#   puts n
#   break if n == 5
# end
