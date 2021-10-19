require 'minitest/autorun'

class SampleTest < Minitest::Test
  def test_sample
    # assert_equal a, bである場合、bの結果がaであればパスする
    assert_equal 'RUBY', 'ruby'.upcase!
    assert_equal 4, 1 + 2
  end

  def test_assert
    #　assertは真の値であればパスする
    assert 1 == 1 #パス
    assert 1 == 2 #失敗
  end

  def test_refute
    #  refuteは偽の値であればパスする
    refute 1 == 2 #パス
    refute 1 == 1 #失敗
  end
end