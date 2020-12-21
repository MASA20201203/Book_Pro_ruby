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
p 'apple'.respond_to?('include?')
p 'apple'.respond_to?(:include?)

# 文字列に'pp'が含まれるか調べる
p 'apple'.include?('pp')
# シンボルを引数で渡すとエラーになる
p 'apple'.include?(:pp)
