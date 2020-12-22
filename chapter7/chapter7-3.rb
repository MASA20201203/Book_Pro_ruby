# 7.3 クラスの定義

# 7.3.3 インスタンス変数とアクセサメソッド
# class User
#   def initialize(name)
#     # インスタンス作成時に渡された名前をインスタンス変数に保存する
#     @name = name
#   end

#   def hello
#     # インスタンス変数に保存されている名前を表示する
#     "Hello, I am #{@name}"
#   end

#   def shuffled_hello
#     shuffled_name = @name.chars.shuffle.join
#     "Hello, I am #{shuffled_name}"
#   end
# end
# user = User.new('Alice')
# p user.hello
# p user.shuffled_hello

# class User
#   def initialize(name)
#     @name = name
#   end

#   # @nameを外部から参照するためのメソッド
#   def name
#     @name
#   end

#   # @nameを外部から変更するためのメソッド
#   def name=(value)
#     @name = value
#   end
# end

# user = User.new('Alice')
# # 変数に代入しているように見えるが、実際はname=メソッドを呼び出している
# p user.name
# user.name = 'Bob'
# p user.name



# class User
#   # @nameを読み書きするメソッドが自動的に定義される
#   attr_accessor :name

#   def initialize(name)
#     @name = name
#   end
# end
# user = User.new('Bob')
# p user.name
# user.name = 'Aiku'
# p user.name

# class User
#   # @nameを読み書きするメソッドが自動的に定義される
#   attr_reader :name

#   def initialize(name)
#     @name = name
#   end
# end
# user = User.new('Bob')
# p user.name
# user.name = 'Aiku'
# p user.name
