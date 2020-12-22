require 'minitest/auto'
require 'gate'

class GateTest < Minitest::Test
  def test_gate
    # とりあえずGeteオブジェクトが作れることを確認する
    assert Gate.new
  end
end
