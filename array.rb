p [].class #=> Array.class
a = ["a", "b", "c"]
a[5] = "f"
p a #=> ["a", "b", "c", nil, nil, "f"]
a.delete_at(2)
p a #=> ["a", "b", nil, nil, "f"]

# 配列から多重代入することができる（divmodは商と余りを配列にして返す）
qoutient, remainder = 14.divmod(3)
puts "商：#{qoutient}, 余り：#{remainder}" #=> 商：4, 余り：2

array = (1..6).to_a
array.delete_if do |n|
  n.odd? #奇数の場合は削除
end

p array #=>[2,6]

number = [1,2,3,4,5]
new_number = number.map { |n| n * 10 }
p new_number

three_array = (1..100).select {|n| n % 3 == 0 || n.to_s.include?('3')}
p three_array.count

p (1..5).class #=> Rangeクラス

p [*1..6] #=> [1, 2, 3, 4, 5, 6]

def to_int(hex)
  hex.scan(/\w\w/).map(&:hex)
end

p to_int('#12abcd')

a = [1,2,3,5,6,7,8,7]
b = [*1..7]

p b - a

a = ("1,2,3,4abc").scan(/\w/)
p a

a = Array.new(5){"dafault"}
a[1].upcase!
p a

a = "abcde"
p a[2]
p a[1, 3]

a = [[20,30],[40,50],[60,70]]
area = a.map {|l, w| l * w}
p area