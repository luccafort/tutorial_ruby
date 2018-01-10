require 'minitest/autorun'
require_relative '../lib/bank'
require_relative '../lib/team'

class DeepFreezableTest < Minitest::Test
    def test_deep_freeze
        # 配列の値が正しいか?
        assert_equal ['Japan', 'US', 'India'], Team::COUNTRIES
        # 配列の値がfreezeされているか?
        assert Team::COUNTRIES.frozen?
        # 配列の要素全てがfreezeされｒているか
        assert Team::COUNTRIES.all? { |country| country.frozen? }
    end
end