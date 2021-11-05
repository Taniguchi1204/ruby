class User
  attr_accessor :first, :last, :age

  def initialize(first, last ,age)
    @first = first
    @last  = last
    @age  = age
  end

  def full_name
    "#{@first} #{@last}"
  end
end

user = User.new("Alice","Camel", 18)
p user.full_name
p user.first
p user.last
p user.age