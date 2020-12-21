# 5.4 続・ハッシュについて

# 5.4.1 ハッシュのキーにシンボルを使う
# # ハッシュのキーをシンボルにする
# currencies = { :japan => 'yen', :us => 'dollar', :india => 'rupee'}
# p currencies[:us]

# # =>ではなく、"シンボル: 値"の記法でハッシュを作成する
# currencies = { japan: 'yen', us: 'dollar', india: 'rupee'}
# p currencies[:japan]

# 5.4.2 キーや値に異なるデータ型を混在させる
# person = {
#   # 値が文字列
#   name: 'Alice',
#   # 値が数値
#   age: 20,
#   # 値が配列
#   friends: ['Bob', 'Carol'],
#   # 値がハッシュ
#   phones: { home: '1234-0000', mobile: '5670-0000' }
# }
# p person[:age]
# p person[:friends]
# p person[:phones][:mobile]

# 5.4.3 メソッドのキーワード引数とハッシュ
# def buy_burger(menu, drink, potato)
#   print "#{menu}バーガーを購入"
#   if drink
#     print "、ドリンクを購入"
#   end
#   if potato
#     puts "、ポテトを購入"
#   end
# end

# # チーズバーガーとドリンクとポテトを購入する
# buy_burger('cheese', true, true)

# # フィッシュバーガーとドリンクを購入する
# buy_burger('fish', true, false)

# キーワード引数を指定

# def buy_burger(menu, drink: true, potato: true)
#   print "#{menu}バーガーを購入"
#   if drink
#     print "、ドリンクを購入"
#   end
#   if potato
#     puts "、ポテトを購入"
#   end
# end

# # チーズバーガーとドリンクとポテトを購入する
# buy_burger('cheese', drink: true, potato: true)
# # フィッシュバーガーとドリンクを購入する
# buy_burger('fish', drink: true, potato: false)

# デフォルト値を使う
# buy_burger('cheese')
# buy_burger('fish', potato: false)
# buy_burger('fish', potato: false, drink: true)


# def buy_burger( menu, drink:, potato: )
#   print "#{menu}バーガーを購入"
#   if drink
#     print "、ドリンクを購入"
#   end
#   if potato
#     puts "、ポテトを購入"
#   end
# end

# # デフォルト値を指定しないと、引数が少ないときはエラー
# # buy_burger('fish', potato: false)

# params = { drink: true, potato: false }
# buy_burger('fish', params)


