class User
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def self.create_users(names)
    names.map do |name|
      User.new(name)
    end
  end

  def hello
    "Hello I am #{name}"
  end
end

class Product
  DEFAULT_PRICE = 0

  attr_reader :name, :price

  def initialize(name, price = DEFAULT_PRICE)
    @name = name
    @price = price
  end
end

product = Product.new("A free movie")
puts product.price

names = ["Alice", "Bob", "Carol"]

users = User.create_users(names)

users.each do |user|
  puts user.hello
end