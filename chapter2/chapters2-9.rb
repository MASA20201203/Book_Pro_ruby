# 2.9 数値についてもっと詳しく

# 2.9.1 10進数以外の整数リテラル
# puts 0b11111111
# puts 0377
# puts 0xff

# 2.9.2 ビット演算
# puts (~0b1010).to_s(2)
# puts (0b1010 & 0b1100).to_s(2)
# puts (0b1010 | 0b1100).to_s(2)
# puts (0b1010 ^ 0b1100).to_s(2)
# puts (0b1010 >> 1).to_s(2)
# puts (0b1010 << 1).to_s(2)

# 2.9.3 指数表現
# puts 2e-3

# 2.9.4 数値クラスのあれこれ
# puts 10.class
# puts 1.5.class

#Ruby 2.4以降はどちらもIntegerクラスになった
# puts 10.class
# puts 9999999999999999999.class

# 有理数リテラルを使う（3rが有理数リテラル）
# r = 2 / 3r
# puts r
# puts r.class

# 文字列から有理数に変換する
# r = '2/3'.to_r
# puts r
# puts r.class

# 複素数リテラルを使う（0.5iが複素数リテラル）
# c = 0.3 - 0.5i
# puts c
# puts c.class

# 文字列から複素数に変換する
# c = '0.3-0.5i'.to_c
# puts c
# puts c.class
