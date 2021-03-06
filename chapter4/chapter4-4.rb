# 4.4 ブロックを使う配列のメソッド

# 4.4.1 map/collect
# numbers = [1, 2, 3, 4, 5]
# new_numbers = []
# numbers.each { |n| new_numbers << n * 10}
# p new_numbers

# numbers = [1, 2, 3, 4, 6]
# new_numbers = numbers.map { |n| n * 10}
# p new_numbers

# 4.4.2 select/find_all\reject
# numbers = [1, 2, 3, 4, 5, 6]
# # ブロックの戻り値が真になった要素だけが集められる
# even_numbers = numbers.select { |n| n.even?}
# p even_numbers

# numbers = [1, 2, 3, 4, 5, 6]
# # 3の倍数を除外する（3の倍数以外を集める）
# non_multiples_of_three = numbers.reject { |n| n % 3 == 0 }
# p non_multiples_of_three

# 4.4.3 find/detect
# numbers = [1, 2, 3, 4, 5, 6]
# # ブロックの戻り値が最初に真になった要素を返す
# even_number = numbers.find { |n| n.even? }
# p even_number

# 4.4.4 inject/reduce
# numbers = [1, 2, 3, 4]
# sum = 0
# numbers.each { |n| sum += n}
# p sum

# numbers = [1, 2, 3, 4]
# sum = numbers.inject(0) { |result, n| result + n }
# p sum

# # injectの計算
# p ((((0 + 1) + 2) + 3) + 4)

# 4.4.5 &とシンボルを使ってもっと簡潔に書く
# # このコードは、
# p ['ruby', 'java', 'perl'].map { |s| s.upcase }
# # こう書き換えられる
# p ['ruby', 'java', 'perl'].map(&:upcase)

# # このコードは、
# p [1, 2, 3, 4, 5, 6].select { |n| n.odd? }
# # こう書き換えられる
# p [1, 2, 3, 4, 5, 6].select(&:odd?)
