# 2.11 メソッド定義についてもっと詳しく

# 2.11.1 デフォルト値付きの引数
# def greeting(country)
#   if country == 'japan'
#     'こんにちは'
#   else
#     'hello'
#   end
# end

# 引数が少ない
# puts greeting

# 引数がちょうど
# puts greeting('us')

# 引数が多い
# puts greeting('us', 'japan')

# 引数なしの場合はcountryに'japan'を設定する
# def greeting(country = 'japan')
#   if country == 'japan'
#     'こんにちは'
#   else
#     'hello'
#   end
# end

# puts greeting
# puts greeting('us')

# 引数のデフォルト値は混在可能
# def default_args(a, b, c = 0, d = 0)
#   "a=#{a}, b=#{b}, c=#{c}, d=#{d}"
# end
# puts default_args(1, 2)
# puts default_args(1, 2, 3)
# puts default_args(1, 2, 3, 4)

# システム日時や他のメソッドの戻り値をデフォルト値に指定する
# def foo(time = Time.now, message = bar)
#   puts "time: #{time}, message: #{message}"
# end

# def bar
#   'BAR'
# end

# foo

# 2.11.2 ?で終わるメソッド
# # 空文字列であればtrue、そうでなければfalse
# puts ''.empty?
# puts 'abc'.empty?

# # 引数の文字列が含まれていなければtrue、そうでなければfalse
# puts 'watch'.include?('at')
# puts 'watch'.include?('in')

# # 奇数ならtrue、偶数ならfalse
# puts 1.odd?
# puts 2.odd?

# # 偶数ならturue、奇数ならfalse
# puts 1.even?
# puts 2.even?

# オブジェクトがnilであればtrue、そうでなければfalse
# puts nil.nil?
# puts 'abc'.nil?
# puts 1.nil?

# 3の倍数ならtrue、それ以外はfalseを返す
# def multiple_of_three?(n)
#   n % 3 == 0
# end
# puts multiple_of_three?(4)
# puts multiple_of_three?(5)
# puts multiple_of_three?(6)
