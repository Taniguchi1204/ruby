p [].class #=> Array.class
a = ["a", "b", "c"]
a[5] = "f"
p a #=> ["a", "b", "c", nil, nil, "f"]
a.delete_at(2)
p a #=> ["a", "b", nil, nil, "f"]

# 配列から多重代入することができる（divmodは商と余りを配列にして返す）
qoutient, remainder = 14.divmod(3)
puts "商：#{qoutient}, 余り：#{remainder}" #=> 商：4, 余り：2

array = [1,2,3,5,6,7]
array.delete_if do |n|
  n.odd? #奇数の場合は削除
end

p array #=>[2,6]

