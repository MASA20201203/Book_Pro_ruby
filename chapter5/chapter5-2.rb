# 5.2 ハッシュ

# 5.2.2 ハッシュを使った繰り返し処理
# currencies = { 'japan' => 'yen', 'us' => 'dollar', 'indeia' => 'rupee' }

# currencies.each do |key_value|
#   p key_value
#   key = key_value[0]
#   value = key_value[1]
#   puts "#{key} : #{value}"
# end

# 5.2.3 ハッシュの同値比較、要素数の取得、要素の削除
# a = {}.size
# p a

# a = { 'x' => 1, 'y' => 2, 'z' => 3}
# p a.size

# p a.delete('x')
# p a

# p a.delete('w')

# p a.delete('w') { |key| "Not fount: #{key}" }
