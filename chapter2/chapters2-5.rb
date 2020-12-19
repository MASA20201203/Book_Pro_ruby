# 2.5.2 論理演算子
# t1 = true
# t2 = true
# f1 = false
# puts t1 && t2
# puts t1 && f1

# f2 = false
# puts t1 || f1
# puts f1 || f2

# &&は||よりも優先順位が高い
# t1 = true
# t2 = true
# f1 = false
# f2 = false
# puts t1 && t2 || f1 && f2
# puts (t1 && t2) || (f1 && f2)

# puts t1 && (t2 || f1) && f2

# puts !t1
# puts !f1

# puts t1 && f1
# puts !(t1 && f1)

# 2.5.3 if文
# n = 11
# if n > 10
#   puts '10より大きい'
# else
#   put '10以下'
# end

# country = 'italy'
# if country == 'japan'
#   puts 'こんにちは'
# elsif country == 'us'
#   puts 'Hello'
# elsif country == 'italy'
#   puts 'ciao'
# else
#   puts '???'
# end

# if文の戻り値を変数に代入
# country = 'japan'

# greeting =
#   if country == 'japan'
#     'こんにちは'
#   elsif country == 'us'
#     'Hello'
#   elsif country == 'italy'
#     'ciao'
#   else
#     '???'
#   end

# puts greeting

# 後置if
# point = 7
# day = 1
# # 1日であればポイント5倍
# if day == 1
#   point *= 5
# end
# puts point

# point = 7
# day = 1
# # 1日であればポイント5倍（後置ifを使用）
# point *= 5 if day == 1
# puts point

# thenの使用
country = 'us'
if country == 'japan' then puts 'こんにちは'
elsif country == 'us' then puts 'Hello'
elsif country == 'italy' then puts 'ciao'
else puts '???'
end


