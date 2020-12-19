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
puts 1.to_s # 行の途中からでもコメントが入れられます。

=begin
コメント
コメント
コメント
=end

# コメント
# コメント
# コメント
