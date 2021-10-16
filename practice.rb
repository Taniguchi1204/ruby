# 1からaまでの数字でbの倍数または、bを含む数字の数
def array_with_a(a,b)
  array = (1..a).select { |number| number % b == 0 || number.to_s.include?("#{b}")}
  puts "#{a}までの数字の中で#{b}の倍数または、#{b}を含む数字は#{array.count}個です"
  puts array.sum
end
array_with_a(20000,3)

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

p gausu(100,4)

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

reverse_number_to_exp(9)


def divisors(num, limit)
  a = (1..limit).select{|n| num % n == 0}
  puts "#{a.length}個"
  puts "総和：#{a.sum}"
end

divisors(1234567890, 20000000)

def ennsyuuritu
  a = "14159265358979323846264338327950288419716939937510582097494459230781640628620899862803482534211706798214808651328230664709384460955058223172535940812848111745028410270193852110555964462294895493038196442881097566593344612847564823378678316527120190914564856692346034861045432664821339360726024914127372458700660631558817488152092096282925409171536436789259036001133053054882046652138414695194151160943305727036575959195309218611738193261179310511854807446237996274956735188575272489122793818301194912983367336244065664308602139494639522473719070217986094370277053921717629317675238467481846766940513200056812714526356082778577134275778960917363717872146844090122495343014654958537105079227968925892354201995611212902196086403441815981362977477130996051870721134999999837297804995105973173281609631859"
  b = a.scan(/\w/).map.with_index do |result, n|
    if n == 0
      a[n] + a[n+1]
    else
      a[n-1]+a[n]
    end
  end
  c = b.group_by(&:itself).map{|value| [value.count]}.to_a
  puts c.max
end

ennsyuuritu

def pitagorasu2(a)
  n = 3
  b = 4
  c = 5
  count = 0
  loop do
    if n**2 + b**2 == c**2
      count += 1
    end
    n += 1
    b += 1
    c += 1
    break if c**2 >= a
  end
  p count
end

pitagorasu2(8000)