require 'minitest/autorun'
require_relative '../lib/bank'
require_relative '../lib/team'

class DeepFreezableTest < Minitest::Test
    def test_deep_freeze_array
        # 配列の値が正しいか?
        assert_equal ['Japan', 'US', 'India'], Team::COUNTRIES
        # 配列の値がfreezeされているか?
        assert Team::COUNTRIES.frozen?
        # 配列の要素全てがfreezeされｒているか
        assert Team::COUNTRIES.all? { |country| country.frozen? }
    end

    def test_deep_freeze_hash
        # ハッシュの値が正しいか
        assert_equal({'Japan' => 'yen', 'US' => 'dollar', 'India' => 'rupee'}, Bank::CURRENCIES)

        # ハッシュ自身がfreezeされているか
        Bank::CURRENCIES.frozen?
        # ハッシュの要素がfreezeされているか
        assert Bank::CURRENCIES.all? { |key, value| key.frozen? && value.frozen? }
    end
end