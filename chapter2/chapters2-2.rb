# 2.2.1 すべてがオブジェクト
# puts '1'.to_s
# puts 1.to_s
# puts nil.to_s
# puts true.to_s
# puts false.to_s
# puts /\d+/.to_s

# 2.2.2 メソッド呼び出し
# puts 1.to_s()
# puts 1.to_s
# puts 10.to_s(16)
# puts 10.to_s 16

# 2.2.2 メソッド呼び出し
# puts 1.to_s()
# puts 1.to_s
# puts 10.to_s(16)
# puts 10.to_s 16

# 2.2.3 文の区切り

# puts '改行ごとにメソッドが実行される'
# puts 1.to_s
# puts nil.to_s
# puts 10.to_s(16)

# puts 'セミコロンを使って、3つの文を1行に押し込める'
# puts 1.to_s; puts nil.to_s; puts 10.to_s(16)

# puts '( で改行しているので、カッコが閉じられるまで改行してもエラーにならない'
# puts 10.to_s(
#   16
# )


# puts '( がない場合は10.to_sと16という2つの文だとみなされる'
# puts 10.to_s
# puts 16

# puts 'バックシュラッシュを使って10.to_s 16を改行して書く'
# puts 10.to_s \
# 16

# 2.2.4 コメント
# この行はコメントです。
# puts 1.to_s # 行の途中からでもコメントが入れられます。

=begin
コメント
コメント
コメント
=end

# コメント
# コメント
# コメント

# 2.2.6 空白文字
# puts (5+1         - 2) * 3
# def 
#            add         (a, b)


#   a +           b
#                      end
# puts add(           4,  5)



# puts (5 + 1 - 2) * 3
# def add(a, b)
#   a + b
# end
# puts add(4, 5)

# 2.2.7 リテラル
# # 数値
# puts 123

# # 文字列
# puts "Hello"

# # 配列
# puts [1, 2, 3]

# # ハッシュ
# puts ( {'japan' => 'yen', 'us' => 'doller', 'india' => 'rupee'} )

# # 正規表現
# puts /\d+-\d+/

# 2.2.8 変数（ローカル変数）の宣言と代入
# s = 'Hello'
# n = 123 + 2
# puts s
# puts n

# 変数を宣言する目的で変数名だけ書くと、エラーになる
# x

# 変数を宣言するには何かしらの値を代入する必要がある
# x = nil
# puts x

# 変数はスネークケースで書く
# special_price = 100
# puts special_price

# キャメルケースは使わない（エラーにはならないが一般的ではない）
# specialPfice = 200
# puts specialPfice

# アンダースコアで変数名を書き始める（あまり使われない）
# _special_price = 300
# puts _special_price

# 変数名に数字を入れる
# special_price_2 = 400
# puts special_price_2

# 数字から始まる変数名は使えない（エラーになる）
# 2_special_price = 500

# 変数名を漢字にする（一般的ではない）
# 特別価格 = 200
# puts 特別価格 * 2

# ⛄ = 100
# puts ⛄

# 同じ変数に文字列や数値を代入する（良いコードではないので注意）
# x = 'Hello'
# puts x
# x = 123
# puts x
# x = 'Good-bye'
# puts x
# x = 456
# puts x

# 2つの値を同時に代入する
# a, b = 1, 2
# puts a
# puts b

# 右辺の数が少ない場合はnilが入る
# c, d = 10
# puts c
# puts d

# 右辺の数が多い場合ははみ出した値が切り捨てられる
# e, f = 100, 200, 300
# puts e
# puts f

# 2つの変数に同じ値を代入する
# a = b = 100
# puts a
# puts b
