require 'minitest/autorun'
require_relative 'gate'

class GateTest < Minitest::Test
  def test_gate
    umeda = Gate.new(:umeda)
    juso = Gate.new(:juso)
    ticket = Ticket.new(150)
    umeda.ender(ticket)
    assert juso.exit(ticket)
  end
end
