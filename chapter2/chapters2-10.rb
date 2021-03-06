# 2.10 真偽値と条件分岐についてもっと詳しく

# 2.10.1 &&や||の戻り値と評価を終了するタイミング
# puts 1 && 2 && 3
# puts 1 && nil && 3
# puts 1 && false && 3

# puts nil || false
# puts false || nil
# puts nil || false || 2 || 3

# Alice、Bob、Carolと順に検索し、最初に見つかったユーザ（nilまたはfalse以外の値）を変数に格納する
# user = find_user('Alice') || find_user('Bob') || find_user('Carol')

# 正常なユーザであればメールを送信する（左辺が偽であればメール送信は実行されない）
# user.valid? && send_email_to(user)

# 2.10.2 優先順位が低いand、or、not
# t1 = true
# f1 = false
# puts (t1 and f1)
# puts t1 or f1
# puts (not t1)

# t1 = true
# f1 = false
# puts (!f1 || t1)
# puts (not f1 || t1)

# # !は||よりも優先順位が高い
# !(f1) || t1
# # notは||よりも優先順位が低い
# not(f1 || t1)

# t1 = true
# t2 = true
# f1 = false
# puts (t1 || t2 && f1) # &&は||よりも優先順位が高い
# puts (t1 or t2 and f1) # andとorの優先順位は同じなので、左から順に評価される

# def greeting(country)
#   # countryがnil（またはfalse）ならメッセージを返してメソッドを抜ける
#   country or return 'countryを入力してください'

#   if country == 'japan'
#     'こんにちは'
#   else
#     'hello'
#   end
# end
# puts greeting(nil)
# puts greeting('japan')

# 2.10.3 unless文

# status = 'error'
# if status != 'ok'
#   puts '何か異常があります'
# end

# status = 'error'
# unless status == 'ok'
#   puts '何か異常があります'
# end

# status = 'ok'
# unless status == 'ok'
#   puts '何か異常があります'
# else
#   puts '正常です'
# end

# status = 'error'

# # unlessの結果を変数に代入する
# message =
#   unless status == 'ok'
#     '何か異常があります'
#   else
#     '正常です'
#   end
# puts message

# puts '何か異常があります' unless status == 'ok'

# status = 'error'
# unless status == 'ok' then
#   puts '何か異常があります'
# end

# status = 'error'
# # unlessを無理に使わなくてもよい
# if status != 'ok'
#   puts '何か異常があります'
# end

# 2.10.4 case文

# country = 'italy'

# # if文を使う場合
# if country == 'japan'
#   puts 'こんにちは'
# elsif country == 'us'
#   puts 'Hello'
# elsif country == 'italy'
#   puts 'ciao'
# else
#   puts '???'
# end

# # case文を使う場合
# case country
# when 'japan'
#   puts 'こんにちは'
# when 'us'
#   puts 'Hello'
# when 'italy'
#   puts 'ciao'
# else
#   puts '???'
# end

# when節に複数の値を指定する
# country = 'アメリカ'
# case country
# when 'japan', '日本'
#   puts 'こんにちは'
# when 'us', 'アメリカ'
#   puts 'Hello'
# when 'italy', 'イタリア'
#   puts 'ciao'
# else
#   puts '???'
# end


# 変数に入れることも可能
# country = '日本'

# message =
#   case country
#   when 'japan', '日本'
#     puts 'こんにちは'
#   when 'us', 'アメリカ'
#     puts 'Hello'
#   when 'italy', 'イタリア'
#     puts 'ciao'
#   else
#     puts '???'
#   end

# puts message

# thenを入れてもかける（使用頻度は高くない）
# country = 'italy'

# case country
# when 'japan' then puts 'こんにちは'
# when 'us' then puts 'Hello'
# when 'italy' then puts 'ciao'
# else '???'
# end

# 2.10.5 条件演算子（三項演算子）
# if文
n = 11
if n > 10
  puts '10より大きい'
else
  puts '10以下'
end

n = 9
n > 10 ? (puts '10より大きい') : (puts '10以下')

n = 12
message = n > 11 ? '11より大きい' : '10以下'
puts message
