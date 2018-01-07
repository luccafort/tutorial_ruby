require 'minitest/autorun'
require_relative '../lib/gate'

class GateTest < Minitest::Test
    def test_gate
        # 150円の切符購入
        # 梅田で入場、十三で出場
        # 期待値: 出場できる
        umeda = Gate.new(:umeda)
        juso = Gate.new(:juso)
        ticket = Ticket.new(150)
        umeda.enter(ticket)
        assert juso.exit(ticket)
    end
end