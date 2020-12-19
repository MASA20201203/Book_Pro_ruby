# 2.6 メソッドの定義

# 2.6.1 メソッドの戻り値
# def add(a, b)
#   # return もつかるが、使わない方が主流
#   return a + b
# end
# puts add(1, 2)

# def greeting(country)
#   # "こんにちは"または"hello"がメソッドの戻り値になる
#   if country == 'japan'
#     'こんにちは'
#   else
#     'hello'
#   end
# end
# puts greeting('japan')
# puts greeting('us')

# def greeting(country)
#   # countryがnilならメッセージを返してメソッドを抜ける
#   # (nil?はオブジェクトがnilの場合にtrueを返すメソッド）
#   return 'countryを入力してください' if country.nil?

#   if country == 'japan'
#     'こんにちは'
#   else
#     'hello'
#   end
# end
# puts greeting(nil)
# puts greeting('japan')

# 2.6.2 メソッド定義における引数の()
# 引数がない場合は( )を付けない方が主流
# def greeting
#   'こんにちは'
# end
# puts greeting

# ()をつけても良いが、省略されることが多い
# def greeting2()
#   'hello'
# end
# puts greeting2

# ()を省略できるが、引数がある場合は()をつけることの方が多い
# def greeting3 country
#   if country == 'japan'
#     'こんにちは'
#   else
#     'ciao'
#   end
# end
# puts greeting3('fc')

