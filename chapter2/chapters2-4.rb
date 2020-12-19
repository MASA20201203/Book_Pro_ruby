# 2.4 数値
# puts 10
# puts 1.5
# puts -3
# puts -4.75

# puts 1_000_000_000

# puts 10 + 20
# puts 100 - 25
# puts 12 * 5
# puts 20 / 5

# n = 1
# puts -n

# puts 1 / 2

# puts 1.0 / 2
# puts 1 / 2.0

# n = 1
# puts n.to_f
# puts n.to_f / 2

# puts 8 % 3

# puts 2 ** 3

# 2.4.1 演算子による値の比較
# puts 1 < 2
# puts 1 <= 2
# puts 1 > 2
# puts 1 >= 2
# puts 1 == 2
# puts 1 == 1
# puts 1 != 2

# 2.4.2 演算子の優先順位
# 以下の計算は(2 * 3) + (4 * 5) - (6 / 2)と同じ
# puts 2 * 3 + 4 * 5 - 6 / 2
# puts 2 * (3 + 4) * (5 - 6) / 2

# 2.4.3 変数に格納された数値の増減
# n = 1
# nを1増やす（n = n + 1と同じ）
# puts n += 1

# nを1減らす（n = n - 1と同じ）
# puts n -= 1

# n = 2
# nを3倍にする
# puts n *= 3

# nを2で割る
# puts n /= 2

# nを2乗する
# puts n **= 2

# column 数値と文字列は暗黙的に変換されない
# 数値と文字列を+演算子で加算することはできない
# puts 1 + '10'

# 文字列は数値に変換する必要がある
# 整数に変換
# puts 1 + '10'.to_i

# 少数に変換
# puts 1 + '10.5'.to_f

number = 3
# 文字列に数値を+演算子で連結することはできない
# 'Number is ' + number

# 数値を文字列に変換する必要がある
# puts 'Number is ' + number.to_s

# 式展開を使用
# puts "Number is #{number}"

# column 小数を使う場合は丸め誤差に注意
# puts 0.1 * 3.0
# puts 0.1 * 3.0 == 0.3
# puts 0.1 * 3.0 <= 0.3

# Rational(有理数)クラスを使用
# puts 0.1r * 3.0r
# puts 0.1r * 3r == 0.3
# puts 0.1r * 3r <= 0.3

# a = 0.1
# b = 3.0
# puts a.rationalize * b.rationalize

# puts (0.1r * 3.0r).to_f
