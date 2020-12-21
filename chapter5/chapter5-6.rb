# 5.6 ハッシュについてもっと詳しく

# 5.6.1 ハッシュでの使用頻度の高いメソッド
# currencies = { japan: 'yen', us: 'dollar', india: 'rupee' }
# p currencies.has_key?(:japan)
# p currencies.has_key?(:italy)

# 5.6.2 **でハッシュを展開させる
# h = { us: 'dollar', india: 'rupee' }
# # 変数hのキーと値を**で展開させる
# g = { japan: 'yen', **h }
# p g
