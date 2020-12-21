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

