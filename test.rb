def pitagorasu(a)
  n = 1
  b = 2
  count = 0
  array = []
  loop do
    c = b**2 - n**2 
    if c == b**2 + n**2
      result = n * b / 2.0
      break if result >= 8000
      n += 2
    b += 2
    count += 1
    end
  end
  p count
end

pitagorasu(8000)