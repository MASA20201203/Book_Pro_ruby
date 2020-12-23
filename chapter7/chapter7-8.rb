# 7.8.2 定数はミュータブルなオブジェクトに注意する
# class Product
#   SOME_NAMES = ['Foo', 'Bar', 'Baz'].freeze
# end
# Product::SOME_NAMES[0].upcase!
# p Product::SOME_NAMES
# SOME_NAMES = ['Foo', 'Bar', 'Baz'].map(&:freeze).freeze
# SOME_NAMES[0] = 'foo'
