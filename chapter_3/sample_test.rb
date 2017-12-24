require 'minitest/autorun'

class SampleTest < Minitest::Test
    def test_sample
        # 成功する
        assert_equal 'RUBY', 'ruby'.upcase
        # 1文字目のみ大文字にしているのでFailになる
        #assert_equal 'RUBY', 'ruby'.capitalize
        # nilからupcaseは呼び出せないのでErrorになる
        #assert_equal 'RUBY', nil.upcase
    end
end