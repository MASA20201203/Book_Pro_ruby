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

# 7.7.7 protectedメソッド
# class User
#   attr_reader :name

#   def initialize(name, weight)
#     @name = name
#     @weight = weight
#   end

#   def heavier_than?(other_user)
#     other_user.weight < @weight
#   end

#   protected

#   def weight
#     @weight
#   end

# end

# alice = User.new('Alice', 50)
# bob = User.new('Bob', 60)
# # p alice.weight
# # p bob.weight
# p alice.heavier_than?(bob)
# p bob.heavier_than?(alice)

# p alice.weight
