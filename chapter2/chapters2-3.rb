# 2.3.1 シングルクオートとダブルクオート
# puts 'これは文字列です。'
# puts "これも文字列です。"

# ダブルクオートで囲むと\nが改行文字として機能する
# puts "こんにちは\nさようなら"

# シングルクオートで囲むと\nはただの文字列になる
# puts 'こんにちは\nさようなら'

# name = 'Alice'
# puts "Hello, #{name}!"

# i = 10
# puts "#{i}は16進数にすると#{i.to_s(16)}です"

# name = 'Alice'
# puts 'Hello, #{name}!'

# name = 'Alice'
# puts 'Hello, ' + name + '!'


# puts "こんにちは\\nさようなら"

# name = 'Alice'
# puts "Hello, \#{name}!"

# puts 'He said, "Don\'t speak."'
# puts "He said, \"Don't speak.\""

# 2.3.2 文字列の比較
# puts 'ruby' == 'ruby'
# puts 'ruby' == 'Ruby'
# puts 'ruby' != 'perl'
# puts 'ruby' != 'ruby'

# puts 'a' < 'b'
# puts 'a' < 'A'
# puts 'a' > 'A'
# puts 'abc' < 'def'
# puts 'abc' < 'ab'
# puts 'abc' < 'abcd'
# puts 'あいうえお' < 'かきくけこ'
