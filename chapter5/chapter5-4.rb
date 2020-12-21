# 5.4 続・ハッシュについて

# 5.4.1 ハッシュのキーにシンボルを使う
# # ハッシュのキーをシンボルにする
# currencies = { :japan => 'yen', :us => 'dollar', :india => 'rupee'}
# p currencies[:us]

# # =>ではなく、"シンボル: 値"の記法でハッシュを作成する
# currencies = { japan: 'yen', us: 'dollar', india: 'rupee'}
# p currencies[:japan]
