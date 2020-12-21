# 5.7 シンボルについてもっと詳しく

# 5.7.1 シンボルを作成するさまざまな方法
# name = 'Alice'
# puts :"#{name.upcase}"

# hash = { 'abc': 123 }
# puts hash

# 5.7.2 %記法でシンボルやシンボルの配列を作成する
# # iを区切り文字に使う
# p %i(apple orange melon)

# name = 'Alice'
# # %iでは改行文字や式展開の構文が、そのままシンボルになる
# p %i(hello\ngood-bye #{name.upcase})
# p %I(hello\ngood-bye #{name.upcase})

# 5.7.3 シンボルと文字列の関係
# respond_to?メソッドの引数には文字列とシンボルの両方を渡せる
# p 'apple'.respond_to?('include?')
# p 'apple'.respond_to?(:include?)

# # 文字列に'pp'が含まれるか調べる
# p 'apple'.include?('pp')
# # シンボルを引数で渡すとエラーになる
# p 'apple'.include?(:pp)

# Column よく使われるイディオム(1) 条件分岐で変数に代入 / &.演算子
# 国名に応じて通貨を返す（該当する通貨がなければnil）
# def find_currency(country)
#   currencies = { japan: 'yen', us: 'dollar', indea: 'rupee' }
#   currencies[country]
# end

# # 指定された国の通貨を大文字にして返す
# def show_currency(country)
#   currency = find_currency(country)
#   # nilでないことをチェック（nilだとupcaseが呼び出せないため）
#   if currency
#     currency.upcase
#   end
# end

# # 指定された国の通貨を大文字にして返す
# def show_currency(country)
#   # 条件分岐内で直接変数に代入してしまう（値が取得できれば真、できなければ偽）
#   if currency = find_currency(country)
#     currency.upcase
#   end
# end

# # 指定された国の通貨を大文字にして返す
# def show_currency(country)
#   currency = find_currency(country)
#   # currencyがnilの場合を考慮して、&.演算子でメソッドを呼び出す
#   currency.upcase
# end

# # 通貨が見つかる場合と見つからない場合の結果を確認
# p show_currency(:japan)
# p show_currency(:brazil)


# # nil以外のオブジェクトであれば、a.upcaseと書いた場合と同じ結果になる
# a = 'foo'
# p a&.upcase

# a = nil
# p a&.upcase
