# 2.8 文字列についてもっと詳しく

# 2.8.1 文字列はStringクラスのオブジェクト
# puts 'abc'.class

# 2.8.2 %記法で文字列を作る
# # %q! !はシングルクオートで囲んだことと同じになる
# puts %q!He said, "Don't speak."!

# # %Q! !はダブルクオートでかこんだことと同じになる（改行文字や式展開が使える）
# something = "Hello."
# puts %Q!He said, "#{something}"!

# # %! !もダブルクオートで囲んだことと同じになる
# something = "Bye."
# puts %!He said, "#{something}"!

# # ?を区切り文字として使う
# puts %q?He said, "Don't speak."?

# # { }を区切り文字としてつかう
# puts %q{He said, "Don't speak."}

# 2.8.3 ヒアドキュメント（行指向文字列リテラル）
# 文字列は途中で改行できる
# puts "Line 1,
# Line 2"

# puts 'Line 1,
# Line 2'

# a = <<TEXT
# これはヒアドキュメントです。
# 複数行に渡る長い文字列を作成するのに便利です。
# TEXT
# puts a

# b = <<HTML
# <div>
#   <img src="sample.jpg">
# </div>
# HTML
# puts b

# 最期の識別子をインデント
# def some_method
#   <<-TEXT
#     これはヒアドキュメントです。
#     <<-を使うと最期の識別子をインデントさせることができます。
#   TEXT
# end

# puts some_method

# <<~TEXT
# def some_method2
#   <<~TEXT
#     これはヒアドキュメントです。
#     <<~を使うと内部文字列のインデント部分が無視されます。
#   TEXT
# end

# puts some_method2

# ヒアドキュメントの中では式展開が有効
# name = 'Alice'
# a = <<TEXT
# ようこそ、#{name}さん！
# 以下のメッセージをご覧ください。
# TEXT
# puts a

# name = 'Alice'
# a = <<'TEXT'
# ようこそ、#{name}さん！
# 以下のメッセージをご覧ください。
# TEXT
# puts a

# name = 'Alice'
# a = <<"TEXT"
# ようこそ、#{name}さん！
# 以下のメッセージをご覧ください。
# TEXT
# puts a

# # ヒアドキュメントを直接引数として渡す（prependは渡された文字列を先頭に追加するメソッド）
# a = 'Ruby'
# a.prepend(<<TEXT)
# Java
# PHP
# TEXT
# puts a

# # ヒアドキュメントで作成した文字列に対して、直接upcaseメソッドを呼び出す
# # (upcaseは文字列をすべて大文字にするメソッド)
# b = <<TEXT.upcase
# Hello,
# Good-bye.
# TEXT
# puts b
