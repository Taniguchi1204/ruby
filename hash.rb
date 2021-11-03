currencies = {'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee'}
# ハッシュに新しいキーと値を追加
currencies['italy'] = 'euro'
# ハッシュの値を更新
currencies['japan'] = 'enn'
p currencies
p currencies['japan'] #　=> 'enn'
p currencies['brazil'] # => 'nil'

# deleteメソッドを使うとハッシュから指定の値を削除（戻り値は削除された要素の値）
p currencies.delete('japan')
p currencies

# ハッシュを使った繰り返し処理(ブロック引数を１つにすると配列にキーと値が格納される)
currencies.each do |key, value|
  puts "#{key}: #{value}"
end

a = {'x' => 1, 'y' => 2, 'z' => 3}
b = {'z' => 3, 'x' => 1, 'y' => 2}
c = {'x' => 10, 'y' => 2, 'z' => 3}

# ＝＝でハッシュ同士のキーと値が一致していればtrue(並びが異なっていてもtrue)
puts a == b
puts a == c

# lengthやsizeでハッシュの個数を確認できる
puts a.length