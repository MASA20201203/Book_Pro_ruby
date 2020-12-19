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

def greeting(country)
  # countryがnilならメッセージを返してメソッドを抜ける
  # (nil?はオブジェクトがnilの場合にtrueを返すメソッド）
  return 'countryを入力してください' if country.nil?

  if country == 'japan'
    'こんにちは'
  else
    'hello'
  end
end
puts greeting(nil)
puts greeting('japan')
  
