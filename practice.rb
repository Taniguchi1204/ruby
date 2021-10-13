# 1からaまでの数字でbの倍数または、bを含む数字の数
def array_with_a(a,b)
  array = (1..a).select { |number| number % b == 0 || number.to_s.include?("#{b}")}
  puts "#{a}までの数字の中で#{b}の倍数または、#{b}を含む数字は#{array.count}個です"
end
array_with_a(100,3)

# # フィボナッチ数列
# def fibo(a,b,c)
#   array = []
#   (0..(a-1)).each_with_index do |result, n|
#     if n == 0 || n == 1
#       result
#     else
#       result = array[n - 1] + array[n - 2]
#     end
#     array << result
#   end
#   p array[a-1]
# end

# fibo(10)

# # トリボナッチ数列
# def tori(a,b,c,d)
#   array = []
#   (0..(d-1)).each_with_index do |result, n|
#     if n == 0
#       result = a
#     elsif n == 1
#       result = b
#     elsif n == 2
#       result = c
#     else
#       result = array[n - 1] + array[n - 2] + array[n - 3]
#     end
#     array << result
#   end
#   p array
# end

# tori(0,0,1,10)

# フィボナッは引数１または３、トリボナッチは引数４、テトラナッチは引数５で実行
def fibo_tribo_tetra_by_max(max, *seq)
  seq = [0, 1] if seq.length < 2
  l = seq.length
  (max-l).times do
    _next = seq[-l..-1].inject(:+)
    seq << _next
  end
  if l == 2
    puts "フィボナッチ数列の#{max}番目は#{seq[max-1]}です"
  elsif l == 3
    puts "トリボナッチ数列の#{max}番目は#{seq[max-1]}です"
  else
    puts "テトラナッチ数列の#{max}番目は#{seq[max-1]}です"
  end
end

fibo_tribo_tetra_by_max 50,1,3,7

# n乗的ガウスの計算
def gausu(a,b)
  (1..a).inject {|result, n| result + n**b }
end

p gausu(40,4)

# aは斜辺、bは底辺、cは側面
def pitagorasu(a, b, c )
  a = a**2
  b = b**2
  c = c**2
  if a == 0
    a = Math.sqrt(b + c)
    puts "斜辺は#{a}"
  elsif b == 0
    b = Math.sqrt(a - c)
    puts "底辺は#{b}"
  else
    c = Math.sqrt(a - b)
    puts "側面は#{c}"
  end
end

pitagorasu(10,5,0)


# nまでの逆数和でexpをこえないnの数字
def reverse_number_to_exp(exp)
  result = 0
  count = 0
  n = 1

  loop do
    result += 1.0 / n
    n += 1
    count += 1
    break if result >= exp
  end
  p count
  p result
end

reverse_number_to_exp(10)

