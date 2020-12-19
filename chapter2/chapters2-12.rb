# 2.12 その他の基礎知識

# 2.12.3 式（Expression）と文（Statement）
# if文が値を返すので変数に代入できる
# a =
#   if true
#     '真です'
#   else
#     '偽です'
#   end
# puts a

# c = def foo; end
# p c

# 2.12.4 擬似変数
# true = 1

# 2.12.5 参照の概念を理解する
# # aとbはどちらも同じ文字列だが、オブジェクトとしては別物
# a = 'hello'
# b = 'hello'
# puts a.object_id
# puts b.object_id

# # cにbを代入する。bとcどちらも同じオブジェクト
# c = b
# puts c.object_id

# # メソッドの引数にcを渡す。引数として受け取ったdはb、cと同じオブジェクト
# def m(d)
#   d.object_id
# end
# puts m(c)

# # equal?メソッドを使って同じオブジェクトかどうか確認してもよい
# puts a.equal?(b)
# puts b.equal?(c)

# # b, cは同じオブジェクト、aは異なるオブジェクト
# a = 'hello'
# b = 'hello'
# c = b

# # 渡された文字列を破壊的に大文字に変換するメソッドを定義する
# def m!(d)
#   d.upcase!
# end

# # cにm!メソッドを適用する
# m!(c)

# # b, cはいずれも大文字になる
# puts b
# puts c

# # aは別のオブジェクトなので大文字にならない
# puts a

# 2.12.7 require
# puts Date.today

# require 'date'
# puts Date.today

# 2.12.10 putsメソッド、printメソッド、pメソッド
# puts 123
# puts 'abc'

# print 123
# print 'abc'

# p 123
# p 'abc'

# s = "abc\ndef"
# puts s
# print s
# p s

# a = [1, 2, 3]
# puts a
# print a
# p a

# 文字列をinspectすると、ダブルクオート付きの文字列が返る
puts 'abc'.inspect
print 'abc'.inspect
p 'abc'.inspect
