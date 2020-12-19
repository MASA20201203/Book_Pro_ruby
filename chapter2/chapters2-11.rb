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
def foo(time = Time.now, message = bar)
  puts "time: #{time}, message: #{message}"
end

def bar
  'BAR'
end

foo
