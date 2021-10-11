puts "===================="
puts "Rubyはオブジェクト指向であるためメソッドが使える"
puts "===================="

obj = ["1", 1, nil, true, false, /\d+/]
obj.each do |i|
 puts i.to_s
end

puts "===================="
puts "２つ以上を同時に代入する"
puts "===================="
a,b,c,d = 1, 10, 100
puts a
puts b
puts c
puts d

puts 1 / 2
puts 1.0 / 2