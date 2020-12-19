# 2.8 文字列についてもっと詳しく

# 2.8.1 文字列はStringクラスのオブジェクト
puts 'abc'.class

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

