require 'minitest/autorun'
require './lib/word_synth'
require './lib/effects'

class WordSynthTest < Minitest::Test
    ORIGINAL_WORD = 'Ruby is fun!'.freeze

    def test_play_without_effects
        synth = WordSynth.new
        assert_equal ORIGINAL_WORD, synth.play(ORIGINAL_WORD)
    end
end