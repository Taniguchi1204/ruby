p :apple.class #Symbolクラス（整数で処理されるため高速で処理できる）
p 'apple'.class #Stringクラス

# object_idが一緒であるためシンボルの方がメモリの使用量が少なくできる
p :apple.object_id
p :apple.object_id
p :apple.object_id
p 'apple'.object_id
p 'apple'.object_id
p 'apple'.object_id

# イミュータブルなオブジェクトであるため破壊的変更ができない
# Symbol = :apple
# Symbol.upcase!

# ハッシュを引数にして可読性を上げる
def buy_burger(burger,drink: true, potato: true)
  puts "#{burger}ハンバーガーを購入"
  if drink
    puts 'ドリンクを購入'
  end
  if potato
    puts 'ポテトを購入'
  end
end

# デフォルト値が設定されている場合は引数を省略可能
buy_burger('cheese')
buy_burger('cheese', drink: false, potato: true)
buy_burger('cheese', drink: true, potato: false)

# 擬似キーワード引数
def buy_burger2(menu, options={})
  drink = options[:drink]
  potato = options[:potato]
  puts "#{menu}ハンバーガーを購入"
  if drink
    puts 'ドリンクを購入'
  end
  if potato
    puts 'ポテトを購入'
  end
end

buy_burger2('cheese', drink: false, potato: true)

# 想定外のキーワードはothers引数で受け取る
def buy_burger3(menu, **others)
  puts menu
  puts others
end

buy_burger3('cheese', drink: 'drink', potato: 'potato')


