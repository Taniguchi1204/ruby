# 1からaまでの数字でbの倍数または、bを含む数字の数
def array_with_a(a,b)
  array = (1..a).select { |number| number % b == 0 || number.to_s.include?("b")}
  p array
  p array.count
end
array_with_a(100,20)

# フィボナッチ数列
def fibo(a)
  array = []
  (0..a).each_with_index do |result, n|
    if n == 0 || n == 1
      result
    else
      result = array[n - 1] + array[n - 2]
    end
    array << result
  end
  p array[a]
end

fibo(100)

