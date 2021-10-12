# # 1からaまでの数字でbの倍数または、bを含む数字の数
# def array_with_a(a,b)
#   array = (1..a).select { |number| number % b == 0 || number.to_s.include?("b")}
#   p array
#   p array.count
# end
# array_with_a(100,20)

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

def fibo_tribo_tetra_by_max(max, *seq)
  seq = [0, 1] if seq.length < 2
  l = seq.length
  (max-l).times do
    _next = seq[-l..-1].inject(:+)
    seq << _next
  end
  p seq
  if l == 2
    puts "フィボナッチ数列の#{max}番目は#{seq[max-1]}です"
  elsif l == 3
    puts "トリボナッチ数列の#{max}番目は#{seq[max-1]}です"
  else
    puts "テトラナッチ数列の#{max}番目は#{seq[max-1]}です"
  end
end

fibo_tribo_tetra_by_max 50,1,3,7

# ４乗的ガウスの計算
def gausu(a,b)
  (1..a).inject {|result, n| result + n**b }
end

p gausu(40,4)