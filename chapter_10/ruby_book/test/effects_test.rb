require 'minitest/autorun'
require './lib/effects'

class EffectsTest < Minitest::Test
    ORIGINAL_WORD = 'Ruby is fun!'.freeze

    def test_reverse
       effect = Effects.reverse
       assert 'ybuR si !nuf', effect.call(ORIGINAL_WORD)
    end

    def test_echo
        effect = Effects.echo(2)
        assert 'RRuubbyy iiss ffuunn!!', effect.call(ORIGINAL_WORD)

        effect = Effects.echo(3)
        assert 'RRRuuubbbyyy iiisss fffuuunnn!!!', effect.call(ORIGINAL_WORD)
    end
end