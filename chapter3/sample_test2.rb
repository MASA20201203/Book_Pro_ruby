# 3.2.4 テストが失敗した場合の実行結果
require 'minitest/autorun'

class SampleTest < Minitest::Test
  def test_sample
    # わざとcapitalizeメソッド（最初の1文字だけを大文字にするメソッド）を呼ぶ
    assert_equal 'RUBY', 'ruby'.capitalize
  end
end
