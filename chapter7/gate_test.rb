require 'minitest/autorun'
require_relative 'gate'

class GateTest < Minitest::Test
  def test_gate
    # とりあえずGeteオブジェクトが作れることを確認する
    assert Gate.new
  end
end
