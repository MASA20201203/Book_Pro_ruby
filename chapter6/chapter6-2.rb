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

# text = <<-TEXT
# クープバゲットのパンは美味しかった。
# 今日はクープ バゲットさんに行きました。
# クープ　バゲットのパンは最高。
# ジャムおじさんのパン、ジャムが入ってた。
# また行きたいです。クープ・バゲット。
# クープ・バケットのパン、売り切れだった（><）
# TEXT

# p text.split(/\n/).grep(/クープ.?バ[ゲケ]ット/)


# <select name="game_console">
# wii_u,Wii U
# ps4,プレステ4
# gb,ゲームボーイ
# </select>]

# <select name="game_console">
# none,
# wii_u,Wii U
# ps4,プレステ4
# gb,ゲームボーイ
# </select>

# html = <<-HTML
# <select name="game_console">
# <option value="none"></option>
# <option value="wii_u" selected>Wii U</option>
# <option value="ps4">プレステ4</option>
# <option value="gb">ゲームボーイ</option>
# </select>
# HTML

# replaced = html.gsub(/<option value="(\w+)"(?: selected)?>(.*)<\/option>/, '\1,\2')

# puts replaced

# 初心者歓迎！手と目で覚える正規表現入門・その３「空白文字を自由自在に操ろう」 - Qiita

# def hello(name)
#   puts "Hello, #{name}!"
# end

# hello('Alice')

# hello('Bob')

# hello('Carol')

# Lorem ipsum dolor sit amet.
# Vestibulum luctus est ut mauris tempor tincidunt.
# Suspendisse eget metus
# Curabitur nec urna eget ligula accumsan congue.

# {
#   japan: 'yen',
#   america: 'dollar',
#   italy: 'euro'
# }

# Feb 14 07:33:02 app/web.1:  Completed 302 Found ...
# Feb 14 07:36:54 heroku/router:  at=info method=...
# Feb 14 07:36:54 app/web.1:  Started HEAD "/" ...
# Feb 14 07:36:54 app/web.1:  Completed 200 ...



# 初心者歓迎！手と目で覚える正規表現入門・その４（最終回）「中級者テクニックをマスターしよう」 - Qiita

# text = <<-TEXT
# type=zip; filename=users.zip; size=1024;
# type=xml; filename=posts.xml; size=2048;
# TEXT
# p text.scan(/(?<=filename=)[^;]+/)

# text = <<-TEXT
# John:guitar, George:guitar, Paul:bass, Ringo:drum
# Freddie:vocal, Brian:guitar, John:bass, Roger:drum
# TEXT
# p text.scan(/\w+(?=:bass)/)

# 6.3 Rubyにおける正規表現オブジェクト

# regex = /\d{3}-\d{4}/
# p regex.class

# p '123-4567' =~ /\d{3}-\d{4}/
# p 'hello' =~ /\d{3}-\d{4}/

# if '123-4567' =~ /\d{3}-\d{4}/
#   puts 'マッチしました'
# else
#   puts 'マッチしませんでした'
# end

# 6.3.2 正規表現のキャプチャを利用する

# text = '私の誕生日は1977年7月17日です。'
# m = /(\d+)年(\d+)月(\d+)日/.match(text)
# p m
# p m[1]
# p m[2]
# p m[3]

# text = '私の誕生日は1977年7月17日です。'
# # 真偽値の判定とローカル変数への代入を同時にやる
# if m = /(\d+)年(\d+)月(\d+)日/.match(text)
#   # 処理
# else
#   #処理
# end
