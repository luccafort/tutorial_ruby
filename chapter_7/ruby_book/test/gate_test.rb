require 'minitest/autorun'
require_relative '../lib/gate'
require_relative '../lib/ticket'

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

    def test_umeda_to_mikuni_when_fare_is_not_enough
        # 150円の切符購入(本来の運賃は190円)
        # 梅田で入場、三国で出場
        # 期待値: 出場できない(運賃不足)
        umeda = Gate.new(:umeda)
        mikuni = Gate.new(:mikuni)
        
        ticket = Ticket.new(150)
        umeda.enter(ticket)
        refute mikuni.exit(ticket)
    end
end