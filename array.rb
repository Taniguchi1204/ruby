
def number(limit)
  count = 0
  (10..limit).each do |n|
    count_within_3 = 0
    loop do
      n = n.to_s.scan(/\w/).inject { |result, n| result.to_i * n.to_i}
      count_within_3 += 1
      break if n < 10
    end
    if count_within_3 == 3
      count += 1
    end
  end
  p count
end

number(1000000)

# require 'minitest/autorun'

# class NumberTest < Minitest::Test
#   def test_number
#     assert_equal 0, number(10)
#     assert_equal 0, number(20)
#     assert_equal 0, number(30)
#     assert_equal 1, number(40)
#     assert_equal 3, number(50)
#     assert_equal 6, number(60)
#     assert_equal 9, number(70)
#     assert_equal 13, number(80)
#     assert_equal 17, number(90)
#     assert_equal 23, number(100)
#   end
# end