# 7.7 メソッドの公開レベル

# 7.7.4 クラスメソッドをpriveteにしたい場合
# class User
#   private

#   def self.hello
#     'Hello'
#   end
# end
# p User.hello

# class User
#   class << self
#     private

#     def self.hello
#       'Hello'
#     end
#   end
# end
# p User.hello
