# 7.6.5 superでスーパークラスのメソッドを呼び出す

# class Product
#   attr_reader :name, :price
  
#   def initialize(name, price)
#     @name = name
#     @price = price
#   end
# end
# product = Product.new('A great movie', 1000)
# p product.name
# p product.price

# class DVD < Product
#   attr_reader :running_time

#   def initialize(name, price, running_time)
#     @name = name
#     @price = price
#     @running_time = running_time
#   end
# end
# dvd = DVD.new('A greatest movie', 2000, 120)
# p dvd.name
# p dvd.price
# p dvd.running_time

# class DVD < Product
#   attr_reader :running_time

#   def initialize(name, price, running_time)
#     super(name, price)
#     @running_time = running_time
#   end
# end
# dvd = DVD.new('A greatest movie', 3000, 120)
# p dvd.name
# p dvd.price
# p dvd.running_time
