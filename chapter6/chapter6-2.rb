# 6.2 正規表現って何？

# 6.2.1 正規表現の便利さを知る

# text = <<TEXT
# I love Ruby.
# Python is a great language.
# Java and JavaScript are different.
# TEXT

# p text.scan(/[A-Z][A-Za-z]+/)

# text = <<TEXT
# 私の郵便番号は1234567です。
# 僕の住所は6770056 兵庫県西脇市板波町1234だよ。
# TEXT

# puts text.gsub(/(\d{3})(\d{4})/, '\1-\2')

# 6.2.2 正規表現をゼロから学習するための参考資料
# 初心者歓迎！手と目で覚える正規表現入門・その１「さまざまな形式の電話番号を検索しよう」

# text = <<-TEXT
# 名前：伊藤淳一
# 電話：03-1234-5678
# 住所：兵庫県西脇市板波町1-2-3
# TEXT

# p text.scan /\d\d-\d\d\d\d-\d\d\d\d/


# 初心者歓迎！手と目で覚える正規表現入門・その２「微妙な違いを許容しつつ置換しよう」 - Qiita

# 初心者歓迎！手と目で覚える正規表現入門・その３「空白文字を自由自在に操ろう」 - Qiita
# 初心者歓迎！手と目で覚える正規表現入門・その４（最終回）「中級者テクニックをマスターしよう」 - Qiita
