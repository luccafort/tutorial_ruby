def fizz_buzz(number)
    if number % 15 == 0
        'Fizz Buzz'
    elsif number % 3 == 0
        'Fizz'
    elsif number % 5 == 0
        'Buzz'
    else
        number.to_s
    end
end

require 'minitest/autorun'

class FizzBuzzTest < Minitest::Test
    def test_fizz_buzz
        assert_equal '1', fizz_buzz(1)
        assert_equal '2', fizz_buzz(2)
        assert_equal 'Fizz', fizz_buzz(3)
        assert_equal '4', fizz_buzz(4)
        assert_equal 'Buzz', fizz_buzz(5)
        assert_equal 'Fizz', fizz_buzz(6)
        assert_equal '7', fizz_buzz(7)
        assert_equal 'Fizz Buzz', fizz_buzz(15)
        assert_equal '16', fizz_buzz(16)
        # Failureになるテストできちんと失敗を検知できるかチェック
        #assert_equal 'Fizz Buzz', fizz_buzz(16)
    end
end