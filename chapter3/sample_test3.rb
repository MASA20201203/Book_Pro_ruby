# 3.2.5 実行中にエラーが発生した場合の実行結果
require 'minitest/autorun'

class SampleTest < Minitest::Test
  def test_sample
    # nilは文字列ではないので、upcaseメソッドを呼ぶことはできない
    assert_equal 'RUBY', nil.upcase
  end
end
